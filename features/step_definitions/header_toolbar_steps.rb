And /^I type in "(.*)" into the header toolbar$/ do | text |
	sleep 3
	page = HeaderToolbar.new(@browser)
	page.searchBox.when_present.set text
end

And /^I click the "(.*)" intant result suggestion$/ do | domain |
	page = HeaderToolbar.new(@browser)
	page.instantResultSuggestion(domain).when_present.click
end
