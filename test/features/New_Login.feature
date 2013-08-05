Feature: Login
  Logs into site
  As a returning customer
  I need to be able to log into the site

  Background:
    Given I am on the home page
    And I am not signed in

  Scenario: Normal Login
    When I sign in with proper credentials
    Then I should be properly logged in

  Scenario: Login with Bad Email Address
    When I sign in with bad email address
    Then I should see the warning "Email or password is incorrect."

  Scenario: Login with Bad Password
    When I sign in with a bad password
    Then I should see the warning "Email or password is incorrect."

  Scenario: Login without Email Address
    When I sign in without an email address
    Then I should see the warning "Email is required."

  Scenario: Login without Password
    When I sign in without a password
    Then I should see the warning "Password  is required."

  Scenario: Remember me
    When I sign in while selecting to be remembered
    Then I should remain signed in