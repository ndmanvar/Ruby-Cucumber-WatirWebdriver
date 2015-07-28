Feature: Sprint Shop for Phone
  In order to see my Sprint information
  As an customer
  I want to make sure that I can log in

  Scenario: Verify Can add phone to cart
    Given I am on the Sprint homepage
    Then I should see the left rail toolbar
    And I click on "Shop" from the left rail toolbar
    And I click on "Phones" from the left rail slide out menu
    And I fill out the zip code field with "94117" and click start shopping if present

    And I dismiss the feedback link if it is present
    And I click on the "Apple iPhone 6" phone

    And I fill out the zip code field with "94117" and click go if present
    And I click continue on the one more question dialog

    And I click add to cart
    And I decline protection
    And I click on go to cart button in the protection plan window

    # TODO: verify it was added to cart
    # Then I should see the "Apple iPhone 6" in my cart
