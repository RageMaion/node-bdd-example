Feature: Login
  Logs into site
  As a returning customer
  I need to be able to log into the site

  Background:
    Given I am on the page "Home"
    And I am not signed in
    When I click "Sign In" link

  Scenario: Normal Login
    When I move focus to field "Email Input"
    And I input "Email Address"
    And I move focus to field "Password Input"
    And I input "Password"
    And I click "Sign In" button
    Then the link "Blah" should display "Hi, {full name}"

  Scenario: Login with Bad Email Address
    When I move focus to field "Email Input"
    And I input "Bad Email Address"
    When I move focus to field "Password Input"
    And I input "Password"
    And I click "Sign In" button
    Then the container "Blah2" should display "Email or password is incorrect."

  Scenario: Login with Bad Password
    When I move focus to field "Email Input"
    And I input "Email Address"
    When I move focus to field "Password Input"
    And I input "Bad Password"
    And I click "Sign In" button
    Then the container "Blah2" should display  "Email or password is incorrect."

  Scenario: Login without Email Address
    When I move focus to field "Password Input"
    And I input "Password"
    And I click "Sign In" button
    Then the container "Blah2" should display  "Email is required."

  Scenario: Login without Password
    When I move focus to field "Email Input"
    And I input "Email Address"
    And I click "Sign In" button
    Then the container "Blah2" should display  "Password  is required."

  Scenario: Remember me
    When I move focus to field "Email Input"
    And I input "Email Address"
    And I move focus to field "Password Input"
    And I input "Password"
    And I ensure the check box "Remeber Me" is checked
    And I click "Sign In" button
    Then the link "Blah" should display "Hi, {full name}"
    And I am remembered