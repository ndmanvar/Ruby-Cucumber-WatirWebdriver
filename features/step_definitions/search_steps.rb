And /^I fill out the "where" text field with "(.*)"$/ do | text |
  page = OrbitzHotelSearchPage.new(@browser)
  page.whereInputBox.when_present.set text
end


And 'I press enter' do
  @browser.send_keys :enter
end


And /^I click the "(.*)" field in the hotel search form$/ do | fieldName |
  page = OrbitzHotelSearchPage.new(@browser)
  case fieldName

  when "check-in"
  	page.checkIn.when_present.click
  when "check-out"
  	page.checkOut.when_present.click
  when "search button"
  	page.searchButton.when_present.click
  else
  	raise 'error'
  end

end

And /^I click "(.*)" of "(.*)" from the calendar menu$/ do | day, monthYear |
  page = OrbitzHotelSearchPage.new(@browser)
  page.calendarDay(day, monthYear).when_present.click
end

And 'I click the first suggestion' do
  page = OrbitzHotelSearchPage.new(@browser)
  page.firstSuggestion.when_present.click
end