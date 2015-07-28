Given 'I am on the Sprint homepage' do
  @browser.goto 'http://www.sprint.com/?adobeQA=lowerD'
end

Then /^the title of the page should be "(.*)"$/ do | title |
  expect(@browser.title).to be == title
end

Then 'I should see the all in homepage image' do
  page = SprintHomePage.new(@browser)
  page.allInHomepageImage.wait_until_present
end

Then 'I should see the left rail toolbar' do
  page = SprintHomePage.new(@browser)
  page.leftRailToolbar.wait_until_present
end

Then 'I should see the best deals in data section' do
  page = SprintHomePage.new(@browser)
  page.bestDeals.wait_until_present
end

