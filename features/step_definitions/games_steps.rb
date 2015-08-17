And /^I click on "(.*)" from the toolbar$/ do | category |
  page = HomePage.new(@browser)

  case category.downcase
  when 'games'
    page.toolbar.games.when_present.click
  else
    raise 'error: invalid argument'
  end
end

Then /^I should see the "(.*)" entry in the game list$/ do | entryName |
	page = GameList.new(@browser)

	page.entry(entryName).wait_until_present
end


And 'I hover on the login button to get rid of Zam featured sites hover menu' do
	page = HomePage.new(@browser)
	loginButton = page.loginButton

	if ENV['browserName'] == 'safari'
		loginButton.when_present.fire_event 'onmouseover'
	else
		loginButton.when_present.hover
	end
end