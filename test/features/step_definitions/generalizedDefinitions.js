var World = require('../support/World.js')

module.exports = generalizedDefinitions

function generalizedDefinitions() {
    this.World = World

    this.When(/^I move focus to field "([^"]*)"$/, function(id, callback) {
        var self = this
        this.browser.elementById(id, onGetElementById)

        function onGetElementById(err, element) {
            if(err)
                throw new Error('field "' + id + '" not found. Error: ' + err.message)
            self.context.element = element
            callback()
        }
    })

    this.When(/^I input "([^"]*)"$/, function(text, callback) {
        this.context.element.type(text, onTyped)

        function onTyped(err) {
            if(err)
                throw err
            callback()
        }
    });

    this.When(/^I click "([^"]*)" button$/, function(id, callback) {
        var self = this

        this.browser.elementById(id, onGetElementById)

        function onGetElementById(err, element) {
            if(err)
                throw new Error('button "' + id + '" not found. Error: ' + err.message)
            self.context.element = element
            element.click(onClick)
        }

        function onClick(err) {
            if(err)
                throw new Error('click failed. Error: ' + err.message)
            callback()
        }
    });
}
