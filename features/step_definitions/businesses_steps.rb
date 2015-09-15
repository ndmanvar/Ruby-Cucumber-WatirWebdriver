Then 'I should see the UnitedHealthCare logo' do
  page = BusinessesPage.new @browser
  page.unitedHealthCareLogo.wait_until_present
end
