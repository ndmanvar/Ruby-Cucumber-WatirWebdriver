Given /^I am on orbitz homepage$/ do
  @browser.goto "http://www.orbitz.com"
end

Then /^the title of the webpage should be "(.*)"$/ do | title |
  @browser.title.should == title
end

Then 'I should see the search reservations box' do
  page = OrbitzHomePage.new(@browser)
  page.searchReservationsBox.wait_until_present
end

Then 'I should see the "Go Stay Play" menu' do
  page = OrbitzHomePage.new(@browser)
  page.goStayPlayMenu.wait_until_present
end
