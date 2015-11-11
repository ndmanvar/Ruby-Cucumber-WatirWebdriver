Feature: Sauce Labs Homepage
  
  Scenario: 3
    Given I am on the Sauce Labs homepage
    Then the title of the page should be
      """
      Sauce Labs: Selenium Testing, Mobile Testing, JS Unit Testing and More
      """
