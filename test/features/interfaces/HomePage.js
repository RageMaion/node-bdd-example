var baseConfig = require('../config/baseConfig.js')
  , url = require('url')
  , proto = HomePage.prototype

function HomePage(browser) {
    this.browser = browser
}

Object.defineProperty(HomePage, 'url',
    { value: url.resolve(baseConfig.baseurl, '/')
    , writable: false
    })

function getSearchBox(callback) {
    this.browser.elementById('searchText', onElement)

    function onElement(error, element) {
        if(error)
            throw error

    }
}

proto.getSearchBox = getSearchBox

module.exports = HomePage