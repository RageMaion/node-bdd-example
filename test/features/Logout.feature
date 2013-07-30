Feature: Logout
  Logs out of site
  As a returning customer
  I need to be able to log out of the site

Scenario: Log out from Home Page
  Given I am on the page "Home"
  And I am signed in
  When I click "Sign Out" link
  Then the link "Blah" should display "Sign In"
