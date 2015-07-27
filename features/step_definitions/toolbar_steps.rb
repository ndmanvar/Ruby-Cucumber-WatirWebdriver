And /^I click on "(.*)" from the left rail toolbar$/ do | text |
  page = SprintHomePage.new(@browser).leftRailToolbar

  case text
  when 'My Sprint'
  	page.mySprint.click
  else
  	raise "error: invalid argument"
  end
  sleep 10
end

And /^I click on "(.*)" from the left rail slide out menu$/ do | text |
  page = SprintHomePage.new(@browser).leftRailToolbar

  case text
  when 'My account'
  	page.myAccount.click
  else
  	raise "error: invalid argument"
  end
  sleep 3
end
