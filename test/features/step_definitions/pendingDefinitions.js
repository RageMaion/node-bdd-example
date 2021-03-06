module.exports = pendingDefinitions

function pendingDefinitions() {
    this.Then(/^the container "([^"]*)" should display "([^"]*)"$/, function(arg1, arg2, callback) {
        // express the regexp above with the code you wish you had
        callback.pending();
    });

    this.Given(/^I am not signed in$/, function(callback) {
        // express the regexp above with the code you wish you had
        callback.pending();
    });

    this.When(/^I click "([^"]*)" link$/, function(arg1, callback) {
        // express the regexp above with the code you wish you had
        callback.pending();
    });

    this.Then(/^the link "([^"]*)" should display "([^"]*)"$/, function(arg1, arg2, callback) {
        // express the regexp above with the code you wish you had
        callback.pending();
    });

    this.Then(/^the container "([^"]*)" should display  "([^"]*)"$/, function(arg1, arg2, callback) {
        // express the regexp above with the code you wish you had
        callback.pending();
    });

    this.When(/^I ensure the check box "([^"]*)" is checked$/, function(arg1, callback) {
        // express the regexp above with the code you wish you had
        callback.pending();
    });

    this.Then(/^I am remembered$/, function(callback) {
        // express the regexp above with the code you wish you had
        callback.pending();
    });

    this.Given(/^I am signed in$/, function(callback) {
        // express the regexp above with the code you wish you had
        callback.pending();
    });
}