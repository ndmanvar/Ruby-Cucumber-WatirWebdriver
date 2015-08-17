class Toolbar
  include PageObject

  def wait_until_present
  	toolbarElement.wait_until_present
  end

  def toolbarElement
    @browser.element(:id => 'menu_horiz')
  end

  def games
    toolbarElement.element(:class => 'nav-games')
  end

end