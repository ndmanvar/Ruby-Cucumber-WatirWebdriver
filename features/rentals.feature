Feature: Move.com Rentals
  
  Scenario: Search for rentals in 94089 (Sunnyvale)
    Given I am on the Move.com homepage
    And I fill out the location field with "94089" and hit enter
    Then I should see rental search results