Feature: Zam Homepage
  In order to learn more about Zam
  As an information seeker
  I want to find more information on the Zam homepage

  Scenario: Verify homepage loads properly
    Given I am on the Zam homepage
    Then the title of the page should be "ZAM"

    Then I should see the "top banner ad" on the homepage
    Then I should see the "featured news" on the homepage
    Then I should see the "logo" on the homepage
    Then I should see the "toolbar" on the homepage
