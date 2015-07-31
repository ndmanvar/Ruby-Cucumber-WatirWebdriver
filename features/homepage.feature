Feature: Williams-Sonoma Homepage
  In order to buy kitchen stuff
  As an user
  I want to go to WS homepage and verify it loads properly

  Scenario: Verify Homepage Loads properly
    Given I am on the Williams-Sonoma homepage
    And I dismiss the Sign Up & Save popup if present
    Then the title of the page should be "Cookware, Cooking Utensils, Kitchen Decor & Gourmet Foods | Williams-Sonoma"
    Then I should see the Williams-Sonoma logo
    Then I should see the homepage toolbar
    Then I should see the End of Summer Sale image

# ad_email_btn-close