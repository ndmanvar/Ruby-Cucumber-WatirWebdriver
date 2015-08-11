Feature: RetailMeNot Search
  In order to get the best deals
  As an deal seeker
  I want to search for deals

  Scenario: Search for amazon
    Given I am on the RetailMeNot homepage
    And I type in "Amazon" into the header toolbar
    And I click the "amazon.com" intant result suggestion

    Then the heading text of the promo and coupon view should be "Amazon Promo Codes & Coupons"
