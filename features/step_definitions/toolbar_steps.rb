And /^I click on "(.*)" from the left rail toolbar$/ do | text |
  page = SprintHomePage.new(@browser).leftRailToolbar

  case text
  when 'My Sprint'
  	page.mySprint.when_present.click
  else
  	raise "error: invalid argument"
  end
end

And /^I click on "(.*)" from the left rail slide out menu$/ do | text |
  page = SprintHomePage.new(@browser).leftRailToolbar

  case text
  when 'My account'
  	page.myAccount.when_present.click
  else
  	raise "error: invalid argument"
  end
end
