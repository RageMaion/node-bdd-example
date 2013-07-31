var config = require('../../config/testConfig.js')
  , wd = require('wd')
  , Q = require('q')
  , Cucumber = require('cucumber')

function initializeBrowserInstanceCmd() {
    var deferred = Q.defer()
      , browser = wd.remote(config.remote)
      , listener = Cucumber.Collection

    browser.on('status', function(info){
        console.log('\x1b[36m%s\x1b[0m', info)
    })

    browser.on('command', function(method, path) {
        console.log(' > \x1b[33m%s\x1b[0m: %s', method, path)
    })

    browser.init(config.desired, function() {
            deferred.resolve(browser)
    })

    return deferred.promise
}

module.exports = initializeBrowserInstanceCmd