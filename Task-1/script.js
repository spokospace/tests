const form = document.getElementById('form');
const results = document.getElementById('results');

form.addEventListener('submit', (e) => {
    e.preventDefault();
    fetchData();
});

async function fetchData() {
    results.innerHTML = '<div class="spinner-border text-primary" role="status"><span class="sr-only">Loading...</span></div>';
    let query = document.getElementById('query');
    let q = query.value.trim();

    const response = await fetch(`https://api.github.com/search/repositories?q=${q}`);
    const data = await response.json();
    results.innerHTML = '';
    
    data.items.forEach(obj => {
        let name = obj['name']
        let full_name = obj['full_name']
        let url = obj['html_url']
        let description = obj['description'] ? obj['description'] : ''
        let language = obj['language'] ? obj['language'] : ''

        item = document.createElement('a');
        item.setAttribute('class', 'list-group-item list-group-item-action flex-column align-items-star');
        item.setAttribute('href',url);
        item.setAttribute('rel', 'nofollow noopener');
        item.setAttribute('target','_blank');
        item.innerHTML = `
            <div class="d-flex w-100 justify-content-between">
                <h5 class="mb-1">${name}</h5>
                <small>${full_name}</small>
            </div>
            <p class="mb-1">${description}</p>
            <small class="text-primary">${language}</small>
        `
        results.append(item)
    });
}