Feature: Heatlhy Eating

  Scenario: Verify Healthy Eating link in menu
    Given I am on the whole foods homepage
    Then I should see the toolbar
    And I click on the menu item from the toolbar
    And I click the "Healthy Eating" link from the menu
    Then the title of the browser tab should be "Healthy Eating | Whole Foods Market"
