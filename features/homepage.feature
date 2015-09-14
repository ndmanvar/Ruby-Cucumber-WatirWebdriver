Feature: Move.com homepage
  
  Scenario: Verify homepage title
    Given I am on the Move.com homepage
    Then the title of the page should be
      """
      Apartment Rentals | Apartments for rent | Homes for sale – Move.com
      """
