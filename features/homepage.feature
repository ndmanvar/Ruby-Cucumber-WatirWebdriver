Feature: Orbitz homepage

  Scenario: Verify homepage loads properly
    Given I am on orbitz homepage
    Then the title of the webpage should be "Orbitz Travel: Airline Tickets, Cheap Hotels, Car Rentals, Vacations & Cruises"
    Then I should see the search reservations box
    Then I should see the "Go Stay Play" menu
    # TO DO: verify more elements
