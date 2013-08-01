var browserFactory = require('./browserFactory.js')
  , config = require('../../config/testConfig.js')
  , initPromise

function getSingletonBrowserCmd(cucumber) {
    if(!initPromise)
        initPromise = browserFactory(config, cucumber)

    return initPromise
}

module.exports = getSingletonBrowserCmd