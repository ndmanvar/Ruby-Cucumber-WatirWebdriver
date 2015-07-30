Then /^I should see the the "(.*)" product entry$/ do | text |
	page = Product.new(@browser)
	page.productItemByText(text).wait_until_present
end