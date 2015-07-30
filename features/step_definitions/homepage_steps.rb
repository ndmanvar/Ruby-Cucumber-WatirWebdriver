Given 'I am on the Williams-Sonoma homepage' do
  @browser.goto 'http://www.williams-sonoma.com/'
end

Then /^the title of the page should be "(.*)"$/ do | title |
  expect(@browser.title).to be == title
end

And 'I dismiss the Sign Up & Save popup if present' do
  page = HomePage.new(@browser)
  page.signUpSavePopupCloseBtn.when_present.click
end

Then 'I should see the Williams-Sonoma logo' do
  page = HomePage.new(@browser)
  page.logo.wait_until_present
end

Then 'I should see the homepage toolbar' do
  page = HomePage.new(@browser)
  page.toolbar.wait_until_present
end

Then 'I should see the End of Summer Sale image' do
  page = HomePage.new(@browser)
  page.endOfSummerSale.wait_until_present
end

Then 'I should see the 20% Off Any One Item image' do
  page = HomePage.new(@browser)
  page.twentyPercentOff.wait_until_present
end
