And /^I click on "(.*)" from the sidebar$/ do | text |
  page = Sidebar.new(@browser)
  page.itemByText(text).when_present.click
end

And /^I click on "(.*)" subitem from the sidebar$/ do | text |
  page = Sidebar.new(@browser)
  page.subItemByText(text).when_present.click
end
