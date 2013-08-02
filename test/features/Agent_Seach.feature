Feature: Agent Search
  Submits an agent Search
  A new user
  I need to be able to submit an agent search

Background:
  Given I am on the page "Home"

Scenario: Submit Search for an Agent
  When I move focus to field "searchText"
  And I input "Agent Name"
  And I click "searchButton" button
  Then the container "breadcrumbs" should display "Century21 Real Estate > Agent Name"

Scenario: Submit City Search for Agents
  When I move focus to field "searchText"
  And I input "City, State"

  And I click "Agents" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > City > Agents"

Scenario: Submit State Search for Agents
  When I move focus to field "searchText"
  And I input "State"
  And I click "Agents" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > Agents"

Scenario: Submit Zip Code Search for Agents
  When I move focus to field "searchText"
  And I input "Zip Code"
  And I click "Agents" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > City > Zip Code > Agents"

Scenario: Submit County Search for Agents
  When I move focus to field "searchText"
  And I input "County"
  And I click "Agents" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > Agents"
#  ^^^ This is not specific enough. Get suggestions. Possibly Use URL? ^^^

Scenario: Submit Neighborhood Search for Agents
  When I move focus to field "searchText"
  And I input "Neighborhood"
  And I click "Agents" button
  Then I am on the page "Search Results"
  And the container "breadcrumbs" should display "Century21 Real Estate > State > City > Neighborhood > Agents"
