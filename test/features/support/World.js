var getSingletonBrowser = require('../support/commands/getSingletonBrowserCmd.js')
  , Q = require('q')

World.prototype.isReady = isReady

module.exports = World

function World(callback, cucumber) {
    this.page = undefined
    this.browser = undefined

    initBrowser.call(this, cucumber, callback)
}

function initBrowser(cucumber, callback) {
    var self = this

    getSingletonBrowser(cucumber).then(onBrowserInitialized)

    function onBrowserInitialized(browser) {
        self.browser = browser
        callback(self)
    }
}

function isReady() {
    return !!this.browser
}