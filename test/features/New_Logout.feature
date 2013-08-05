Feature: Logout
  Logs out of site
  As a returning customer
  I need to be able to log out of the site

Scenario: Log out from Home Page
  Given I am on the home page
  And I am signed in
  When I click the link to sign out
  Then I should be logged out
