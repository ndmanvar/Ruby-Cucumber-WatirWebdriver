Given 'I am on the whole foods homepage' do
  @browser.goto 'http://www.wholefoodsmarket.com/'
end

Then 'I should see the toolbar' do
  page = Homepage.new @browser
  page.toolbar.wait_until_present
end

Then 'I should see the "Get Fired Up" homepage image' do
  page = Homepage.new @browser
  page.getFiredUpImg.wait_until_present
end

Then /^the title of the browser tab should be "(.*)"$/ do | title |
  Watir::Wait.until { @browser.title == title }
end
