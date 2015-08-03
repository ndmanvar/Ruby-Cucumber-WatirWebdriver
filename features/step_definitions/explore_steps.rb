And 'I click the explore link from the toolbar' do
	@browser.element(:css, '.header-nav-link').when_present.click
end

Then 'I should see the explore marketing header' do
	@browser.element(:css => '.explore-marketing-header').wait_until_present
end