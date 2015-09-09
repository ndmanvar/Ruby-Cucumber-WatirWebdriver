@selenium
Feature: Github homepage

  Scenario: Github homepage loads properly
    Given I am on github homepage
    Then the title of the page should be "GitHub · Where software is built"
