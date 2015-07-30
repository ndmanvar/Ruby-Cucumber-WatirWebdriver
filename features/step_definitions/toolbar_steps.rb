And /^I click on "(.*)" from the toolbar$/ do | text |
	page = Toolbar.new(@browser)

	case text
	when "Cooks' Tools"
		page.cooks_tools.when_present.click
	else
		raise 'error: invalid option'
	end

	# hover on logo to avoid hover menu from triggering
	HomePage.new(@browser).logo.when_present.hover if ENV['browserName'] == 'internet explorer'
end
