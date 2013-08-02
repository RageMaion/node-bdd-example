Feature: Agent Search
  Submits an agent Search
  A new user
  I need to be able to submit an agent search

Background:
  Given I am on the home page

Scenario: Submit Search for an Agent
  When I search for "Lisa Abbott"
  Then I should see the agent page

Scenario: Submit City Search for Agents
  When I search for agents in "Phoenix, AZ"
  Then I should see the agents results page

Scenario: Submit State Search for Agents
  When I search for agents in "Arizona"
  Then I should see the agents results page

Scenario: Submit Zip Code Search for Agents
  When I search for agents in "85254"
  Then I should see the agents results page

Scenario: Submit County Search for Agents
  When I search for agents in "Maricopa County, AZ"
  Then I should see the agents results page

Scenario: Submit Neighborhood Search for Agents
  When I search for agents in "Brentwood, Phoenix, AZ"
  Then I should see the agents results page
