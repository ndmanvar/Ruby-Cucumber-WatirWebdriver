@selenium
Feature: Github explore

  Scenario: Click explore link from toolbar
    Given I am on github homepage
    And I click the explore link from the toolbar
    Then I should see the explore marketing header
