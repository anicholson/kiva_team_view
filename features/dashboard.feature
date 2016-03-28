Feature: Team View Dashboard
  Scenario: Viewing the Dashboard
    Given I am logged in
    When I visit the root path
    Then I should be on the Dashboard page
