Feature: Property Search
  Submits a Property Search
  A new visitor to the site
  I need to be able to submit a search

Background:
  Given I am on the page "Home"

  Scenario: Submit MLS Search for a Property
    When I search for a property by MLS ID
    Then I should see the property details page

  Scenario: Submit Address Search for a Property
    When I search for a property by address
    Then I should see the property details page

  Scenario: Submit City Search for Properties
    When I search for properties in "Phoenix, AZ"
    Then I should see the property results page

  Scenario: Submit State Search for Properties
    When I search for properties in "Arizona"
    Then I should see the property results page

  Scenario: Submit Zip Code Search for Properties
    When I search for properties in "85254"
    Then I should see the property results page

  Scenario: Submit County Search for Properties
    When I search for properties in "Maricopa County, AZ"
    Then I should see the property results page

  Scenario: Submit Neighborhood Search for Properties
    When I search for properties in "Brentwood, Phoenix, AZ"
    Then I should see the property results page