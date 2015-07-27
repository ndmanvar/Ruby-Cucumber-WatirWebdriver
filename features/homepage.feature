Feature: Sprint Homepage
  In order to purchase a phone plan
  As an customer
  I want to make sure the homepage rendered properly

  Scenario: Verify Title and UI
    Given I am on the Sprint homepage
    Then the title of the page should be "Cell Phones, Mobile Phones & Wireless Calling Plans from Sprint"
    Then I should see the all in homepage image
    Then I should see the best deals in data section

