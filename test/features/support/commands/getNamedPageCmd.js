var map = { 'home' : require('../../interfaces/HomePage.js')
          , 'search results' : require('../../interfaces/SearchResultsPage.js')
          }

function getNamedPageCmd(name) {
    var key = name.toLowerCase()

    if(!map.hasOwnProperty(key))
        throw new Error('the interface ' + name + ' is not recognized')
    return map[name.toLowerCase()]
}

module.exports = getNamedPageCmd