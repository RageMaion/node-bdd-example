var getNamedPage = require('../support/commands/getNamedPageCmd.js')
  , World = require('../support/World.js')

function pageDefinitions() {
    this.World = World

    this.Given(/^I am on the page "([^"]*)"$/, gotoPage)
    this.Then(/^I am on the page "([^"]*)"$/, gotoPage)
}

function gotoPage(pagename, callback) {
    var Page = getNamedPage(pagename)

    this.page = new Page(this)
    this.browser.get(Page.url, callback)
}

module.exports = pageDefinitions