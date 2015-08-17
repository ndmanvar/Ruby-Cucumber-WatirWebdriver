Given 'I am on the Zam homepage' do
  @browser.goto 'http://www.zam.com/'
end

Then /^the title of the page should be "(.*)"$/ do | titleText |
  expect(@browser.title).to be == titleText
end

Then /^I should see the "(.*)" on the homepage$/ do | name |
	page = HomePage.new(@browser)

	case name.downcase
	when 'top banner ad'
		page.topBannerAd.wait_until_present
	when 'featured news'
		page.featuredNews.wait_until_present
	when 'logo'
		page.logo.wait_until_present
	when 'toolbar'
		page.toolbar.wait_until_present
	else
		raise "invalid argument"
	end

end
