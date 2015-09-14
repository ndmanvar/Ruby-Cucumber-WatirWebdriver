Given 'I am on the Move.com homepage' do
  @browser.goto 'http://www.move.com/'
end

Then /the title of the page should be/ do |text|
  expect(@browser.title).to be == text
end

And /^I fill out the location field with "(.*)" and hit enter$/ do | text |
	page = HomePage.new @browser

	# send text to input text field
	page.locationTextBox.when_present.set text

	# hit enter
	page.locationTextBox.send_keys :enter
end
