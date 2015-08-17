Feature: Zam Games
  In order to learn more about Zam games
  As an gamer and information seeker
  I want to see Zam's game list

  Scenario: Verify 4Story is in game list
    Given I am on the Zam homepage
    And I hover on the login button to get rid of Zam featured sites hover menu
    And I click on "Games" from the toolbar
    Then I should see the "4Story" entry in the game list
