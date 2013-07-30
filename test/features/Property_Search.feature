Feature: Property Search
  Submits a Property Search
  A new user
  I need to be able to submit a search

Background:
  Given I am on the page "Home"

Scenario: Submit Address Search
  When I move focus to field "Search"
  And I input "Address"
  And I click "Search" button
  Then the container "breadcrumbs" should display "Century21 Real Estate > State > City > Zip Code > Address"

Scenario: Submit MLS Search
  When I move focus to field "Search"
  And I input "MLS ID"
  And I click "Search" button
  Then the container "breadcrumbs" should display "Century21 Real Estate > State > City > Zip Code > Address"

Scenario: Submit City Search for Properties
  When I move focus to field "Search"
  And I input "City, State"
  And I click "Search" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > City > Homes For Sale"

Scenario: Submit State Search for Properties
  When I move focus to field "Search"
  And I input "State"
  And I click "Search" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > Homes For Sale"

Scenario: Submit Zip Code Search for Properties
  When I move focus to field "Search"
  And I input "Zip Code"
  And I click "Search" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > City > Zip Code > Homes For Sale"

Scenario: Submit County Search for Properties
  When I move focus to field "Search"
  And I input "County"
  And I click "Search" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > Homes For Sale"
  ^^^ This is not specific enough. Get suggestions. Possibly Use URL? ^^^

Scenario: Submit Neighborhood Search for Properties
  When I move focus to field "Search"
  And I input "Neighborhood"
  And I click "Search" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > City > Neighborhood > Homes For Sale"

Scenario: Search without matches
  When I move focus to field "Search"
  And I input "Unmatched"
  Then the container "Results" should display "We do not have any results matching"