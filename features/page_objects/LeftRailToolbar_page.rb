class LeftRailToolbar
  include PageObject

  def toolbar
  	@browser.element(:css => "#sprint-menu ul")
  end

  def wait_until_present
  	toolbar.wait_until_present
  end

  def mySprint
  	toolbar.element(:id => 'tl-menu-mysprint')
  end

  def myAccount
  	# @browser.element(:css => "a#tl_desktop_not-signed-my-account")
    # @browser.element(:xpath => "//*[@id='tl_desktop_not-signed-my-account' and text()='My account']")
    @browser.element(:css => ".sprint-rail-menu__blade ul li")
  end

end