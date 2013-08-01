var getSingletonBrowser = require('../support/commands/getSingletonBrowserCmd.js')
  , Q = require('q')
  , Cucumber = require('cucumber')
  , world

World.prototype.isReady = isReady

module.exports = worldFactory

function worldFactory(callback, cucumber) {
    if(!world)
        world = new World(callback, cucumber)
    else
        callback(world)
    return world
}

function World(callback, cucumber) {
    this.browser = undefined
    this.context = {}

    attachToCucumber.call(this, cucumber)
    initBrowser.call(this, cucumber, callback)
}

function attachToCucumber(cucumber) {
    var listener = Cucumber.Listener()
      , self = this

    listener.setHandlerForEvent('BeforeScenario', resetContext)
    cucumber.attachListener(listener)

    function resetContext(event, callback) {
        self.context = {}
        callback()
    }
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