Feature: Office Search
  Submits an Office Search
  A new visitor to the site
  I need to be able to submit an office search

Background:
  Given I am on the home page

Scenario: Submit Search for an Office
  When I search for an office by name
  Then I should see the office details page

Scenario: Submit City Search for Offices
  When I search for offices in "Phoenix, AZ"
  Then I should see the office results page

Scenario: Submit State Search for Offices
  When I search for offices in "Arizona"
  Then I should see the office results page

Scenario: Submit Zip Code Search for Offices
  When I search for offices in "85254"
  Then I should see the office results page

Scenario: Submit County Search for Offices
  When I search for offices in "Maricopa County, AZ"
  Then I should see the office results page

Scenario: Submit Neighborhood Search for Offices
  When I search for offices in "Brentwood, Phoenix, AZ""
  Then I should see the office results page

