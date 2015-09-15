class BusinessesPage
  include PageObject

  def unitedHealthCareLogo
    @browser.element(:css => '[alt~=unitedhealthcare]')
  end

end
