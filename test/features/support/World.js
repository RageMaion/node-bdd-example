var initializeBrowserInstance = require('../support/commands/initializeBrowserInstanceCmd.js')
  , browserInitPromise = initializeBrowserInstance()
  , proto = World.prototype
  , globalBrowser

browserInitPromise.then(onBrowserInit)
Object.defineProperty(World.prototype, 'browser', { get: getBrowser })
Object.defineProperty(World.prototype, 'initPromise', { get: getInitPromise })

proto.isReady = isReady

module.exports = World

function World(callback) {
    var self = this

    browserInitPromise.then(onBrowserInitialized)

    function onBrowserInitialized() {
        callback(self)
    }
}

function onBrowserInit(browser) {
    globalBrowser = browser
}

function getBrowser() {
    return globalBrowser
}

function isReady() {
    return !!globalBrowser
}

function getInitPromise() {
    return browserInitPromise
}