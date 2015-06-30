Feature: Homepage

  Scenario: Find what I'm looking for 1
    Given I am on the whole foods homepage
    Then I should see the toolbar
    Then I should see the "Get Fired Up" homepage image
    Then the title of the browser tab should be "Whole Foods Market"
