Given /^I am on github homepage$/ do
  @browser.goto "http://www.github.com"
end


Then /^the title of the page should be "(.*)"$/ do | titleText |
  Watir::Wait.until { @browser.title == titleText }
end
