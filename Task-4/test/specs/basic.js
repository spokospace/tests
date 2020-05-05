const assert = require('assert')

describe('Tantis.pl search', () => {
    it('check autosuggest item', () => {
        browser.url('https://tantis.pl/')
        $('#search').setValue('Blanka Lipińska')
        $('.autocomplete-result-list>li').click()
    })
})

