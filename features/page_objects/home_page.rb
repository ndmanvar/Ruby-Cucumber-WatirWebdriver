class HomePage
  include PageObject

  def businessTab
  	@browser.element(:css => "a.NavMenuItem[href='/Businesses/Default.aspx']")
  end

end