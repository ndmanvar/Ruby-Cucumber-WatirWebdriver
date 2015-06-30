And 'I click on the menu item from the toolbar' do
  page = Toolbar.new @browser
  page.menu.when_present.click
end

And /^I click the "(.*)" link from the menu$/ do | linkText |
  page = Menu.new @browser
  page.link(linkText).when_present.click
end
