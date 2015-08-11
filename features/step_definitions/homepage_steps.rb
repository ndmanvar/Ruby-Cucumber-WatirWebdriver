Given 'I am on the RetailMeNot homepage' do
  @browser.goto 'http://www.retailmenot.com/'
end

Then /^the title of the page should be "(.*)"$/ do | titleText |
	expect(@browser.title).to be == titleText
end
