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
  	@browser.element(:xpath => "//a[contains(@id, '-account') and contains(text(), 'My account')]")
  end

end