class GithubSearchPanel {

    private appDiv: HTMLDivElement = document.getElementById('app') as HTMLDivElement;

    constructor() {
        this.setForm();
        const form: HTMLFormElement = document.getElementById('form') as HTMLFormElement;
        form.addEventListener('submit', (event) => {
            event.preventDefault();
            this.submitForm();
        });
    }

    private setForm(): void {
        this.appDiv.innerHTML = `
        <div class="display-4 col-12">GitHub Repo Search</div>
        <form class="col-12 form-inline mb-2" id="form">
            <input class="form-control" type="text" id="query" placeholder="Type name of repo to search..." required>
            <button class="btn btn-outline-primary mt-2 mt-md-0 ml-md-2" id="submitButton">Search</button>
        </form>
        <div class="col-12">
            <ul class="list-group" id="results"></ul>
        </div>
        `;
    }

    private async fetchData(): Promise < void > {
        let results: HTMLUListElement = document.getElementById('results') as HTMLUListElement;
        results.innerHTML = '<div class="spinner-border text-primary" role="status"><span class="sr-only">Loading...</span></div>';
        let query: string = ( < HTMLInputElement > document.getElementById('query')).value.trim();

        const response = await fetch(`https://api.github.com/search/repositories?q=${query}`);
        const data = await response.json();
        results.innerHTML = '';
        data.items.forEach((obj: any) => {
            let name = obj['name'];
            let full_name = obj['full_name'];
            let url = obj['html_url'];
            let description = obj['description'] ? obj['description'] : '';
            let language = obj['language'] ? obj['language'] : '';

            let item = document.createElement('a') as HTMLAnchorElement;
            item.setAttribute('class', 'list-group-item list-group-item-action flex-column align-items-star');
            item.setAttribute('href', url);
            item.setAttribute('rel', 'nofollow noopener');
            item.setAttribute('target', '_blank');
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

    private submitForm(): void {
        this.fetchData();
    }

}

new GithubSearchPanel();