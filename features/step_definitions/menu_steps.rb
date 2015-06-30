And 'I click on the menu item from the toolbar' do
  @browser.element(:css, '.bc-menu-btn').when_present.click
end

And /^I click the "(.*)" link from the menu$/ do | linkText |
  @browser.element(:css, ".#{linkText.downcase.gsub(' ', '-')}").when_present.click
end
