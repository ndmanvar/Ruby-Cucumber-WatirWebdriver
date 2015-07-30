class Toolbar
  include PageObject

  def toolbar
    @browser.element(:class => 'nav-menu')
  end

  def wait_until_present
  	toolbar.wait_until_present
  end

  def cooks_tools
    toolbar.element(:class => 'topnav-cooks-tools')
  end

end