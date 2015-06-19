Given 'I am on the Google search page' do
  @browser.goto 'http://www.google.com/'
end

When /I search for "(.*)"/ do |query|
  page = GoogleHomePage.new @browser

	page.searchBox.when_present.set query
end

Then /I should see/ do |text|
  Watir::Wait.until { @browser.text =~ /#{text}/m }
end
