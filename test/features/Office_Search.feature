Feature: Office Search
  Submits an Office Search
  A new user
  I need to be able to submit an office search

Background:
  Given I am on the page "Home"

Scenario: Submit Search for an Office
  When I move focus to field "Search"
  And I input "Office Name"
  And I click "Offices" button
  Then the container "breadcrumbs" should display "Century21 Real Estate > Office Name"

Scenario: Submit City Search for Offices
  When I move focus to field "Search"
  And I input "City, State"
  And I click "Offices" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > City > Offices"

Scenario: Submit State Search for Offices
  When I move focus to field "Search"
  And I input "State"
  And I click "Offices" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > Offices"

Scenario: Submit Zip Code Search for Offices
  When I move focus to field "Search"
  And I input "Zip Code"
  And I click "Offices" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > City > Zip Code > Offices"

Scenario: Submit County Search for Offices
  When I move focus to field "Search"
  And I input "County"
  And I click "Offices" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > Offices"
  ^^^ This is not specific enough. Get suggestions. Possibly Use URL? ^^^

Scenario: Submit Neighborhood Search for Offices
  When I move focus to field "Search"
  And I input "Neighborhood"
  And I click "Offices" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > City > Neighborhood > Offices"
