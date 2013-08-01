var wd = require('wd')
  , Q = require('q')
  , Cucumber = require('cucumber')

module.exports = browserFactory

function browserFactory(config, cucumber, verbose) {
    var deferred = Q.defer()
      , browser = wd.remote(config.remote)

    if(verbose)
        verboseBrowserStatus(browser)
    browser.init(config.desired, onBrowserInit)

    function onBrowserInit(err) {
        if(err)
            throw err
        if(verbose)
            verboseCucumberEvents(cucumber)
        attachToCucumber(browser, cucumber)
        deferred.resolve(browser)
    }

    return deferred.promise
}

function attachToCucumber(browser, cucumber) {
    listener = Cucumber.Listener()

    listener.setHandlerForEvent('AfterFeatures', onAfterFeatures)
    cucumber.attachListener(listener)

    function onAfterFeatures(event, callback) {
        browser.quit(callback)
    }
}

function verboseCucumberEvents(cucumber) {
    var listener = Cucumber.Listener()

    listener.hasHandlerForEvent = function() { return true }
    listener.getHandlerForEvent = function() { return logEvent }
    cucumber.attachListener(listener)
}

function logEvent(event, callback) {
    console.log(event.getName())
    callback()
}

function verboseBrowserStatus(browser) {
    browser.on('status', function(info){
        console.log('\x1b[36m%s\x1b[0m', info)
    })

    browser.on('command', function(method, path) {
        console.log(' > \x1b[33m%s\x1b[0m: %s', method, path)
    })
}