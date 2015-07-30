Feature: Cooking Tools
	In order to buy Cooking Tools
  	As an user
  	I want to go to WS homepage and find Cooking Tools to buy

	Scenario: Williams-Sonoma Stainless-Steel Silicone Tool Set
		Given I am on the Williams-Sonoma homepage
	    And I dismiss the Sign Up & Save popup if present
	    And I click on "Cooks' Tools" from the toolbar
	    And I click on "Cooking Utensils" from the sidebar
	    And I click on "Tool Sets" subitem from the sidebar
	    Then I should see the the "Williams-Sonoma Stainless-Steel Silicone Tool Set" product entry

