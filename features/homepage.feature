Feature: Sauce Labs Homepage
  
  Scenario: Verify homepage title
    Given I am on the Sauce Labs homepage
    Then the title of the page should be
      """
      Make this fail
      """
