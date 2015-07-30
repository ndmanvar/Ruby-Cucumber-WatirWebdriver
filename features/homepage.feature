Feature: Williams-Sonoma Homepage
  In order to buy kitchen stuff
  As an user
  I want to go to WS homepage and verify it loads properly

  Scenario: Find what I'm looking for 2
    Given I am on the Williams-Sonoma homepage
    And I dismiss the Sign Up & Save popup if present
    Then the title of the page should be "Cookware, Cooking Utensils, Kitchen Decor & Gourmet Foods | Williams-Sonoma"
    Then I should see the Williams-Sonoma logo
    Then I should see the homepage toolbar
    Then I should see the End of Summer Sale image
    Then I should see the 20% Off Any One Item image

# ad_email_btn-close