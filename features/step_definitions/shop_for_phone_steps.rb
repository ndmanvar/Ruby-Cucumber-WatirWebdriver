And /^I click on the "(.*)" phone$/ do | phoneName |
	editedPhoneName = phoneName.downcase.gsub(' ', '_')
	@browser.element(:xpath => "//img[@class='pod__img' and contains(@src, '#{editedPhoneName}')]").when_present.click
end

And 'I dismiss the feedback link if it is present' do
	sleep 8
	element = @browser.element(:xpath => "//img[contains(@src, 'bwc_close')]")
	element.click if element.present?
end

And 'I click continue on the one more question dialog' do
	@browser.element(:xpath => "//*[contains(@class, 'pure-button') and text()='Continue']").when_present.click
end

And 'I click add to cart' do
	@browser.element(:class => 'checkout-button').when_present.click
end

And 'I decline protection' do
	@browser.element(:xpath => "//*[text()='Decline protection']").when_present.click
end

And 'I click on go to cart button in the protection plan window' do
	@browser.element(:xpath => "//*[text()='Go to cart']").when_present.click
end

Then /^I should see the "(.*)" in my cart$/ do | phoneName |
	sleep 3
	element = @browser.element(:css => ".modalChromeCloseButton.closeModal")
	element.click if element.present?

	@browser.element(:xpath => "//*[@class='items']/*[contains(text(), '#{phoneName}')]").wait_until_present
end

And /^I fill out the zip code field with "(.*)" and click start shopping if present$/ do | zipCode |
	element = @browser.text_field(:id => 'txtInterceptZipCode')

	sleep 3
	if element.present?
		element.set(zipCode) if element.present?
		@browser.element(:id => 'btnInterceptStartShopping').click
	end
end

# ng-invalid-required

And /^I fill out the zip code field with "(.*)" and click go if present$/ do | zipCode |

	element = @browser.text_field(:class => 'ng-invalid-required')

	sleep 3
	if element.present?
		element.set(zipCode) if element.present?
		elem = @browser.element(:xpath => "//*[contains(@class, 'pure-button') and text()='Go']")
		elem.click if elem.present?
	end
end