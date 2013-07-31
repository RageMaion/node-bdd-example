var baseConfig = require('../config/baseConfig.js')
  , url = require('url')
  , proto = HomePage.proto

function HomePage() {
}

Object.defineProperty(HomePage, 'url',
    { value: url.resolve(baseConfig.baseurl, '/')
    , writable: false
    })

module.exports = HomePage