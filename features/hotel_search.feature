Feature: Orbitz hotel search

  Scenario: Verify user can search for hotel
    Given I am on orbitz homepage
    Then I should see the search reservations box
    And I fill out the "where" text field with "San Francisco, CA"
    # And I click the suggestion with text "San Francisco, CA, United States"
    And I click the first suggestion
    # And I press enter


    And I click the "check-in" field in the hotel search form

    And I click "23" of "Jul 2015" from the calendar menu

    And I click the "check-out" field in the hotel search form
    And I click "27" of "Jul 2015" from the calendar menu

    And I click the "search button" field in the hotel search form
