class SprintHomePage
  include PageObject

  def leftRailToolbar
  	LeftRailToolbar.new(@browser)
  end

  def allInHomepageImage
  	@browser.element(:class => 'hero')
  end

  def bestDeals
  	@browser.element(:css => '.pure-g.pod')
  end

end