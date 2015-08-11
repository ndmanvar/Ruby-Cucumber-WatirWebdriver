Then /^the heading text of the promo and coupon view should be "(.*)"$/ do | text |
	Watir::Wait.until { @browser.element(:class => 'site-title').when_present.text == text }
end