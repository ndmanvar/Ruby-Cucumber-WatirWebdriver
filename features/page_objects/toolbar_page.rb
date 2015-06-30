class Toolbar
  include PageObject

  def menu
  	@browser.element(:css, '.bc-menu-btn')
  end

end