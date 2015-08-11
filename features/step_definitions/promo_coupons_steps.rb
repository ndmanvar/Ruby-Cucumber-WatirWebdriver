Then /^the heading text of the promo and coupon view should be "(.*)"$/ do | text |
	siteTitleText = @browser.element(:class => 'site-title').when_present.text
	expect(siteTitleText).to be == text
end