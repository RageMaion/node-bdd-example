var getNamedPage = require('../support/commands/getNamedPageCmd.js')
  , World = require('../support/World.js')

function pageDefinitions() {
    this.World = World

    this.Given(/^I am on the page "([^"]*)"$/, function(pagename, callback) {
        var HomePage = getNamedPage(pagename)
        // express the regexp above with the code you wish you had
        callback.pending();
    })

    this.Then(/^I am on the page "([^"]*)"$/, function(pagename, callback) {
        var page = getNamedPage(pagename)

        this.browser.get(page.url, callback)
    })
}

module.exports = pageDefinitions