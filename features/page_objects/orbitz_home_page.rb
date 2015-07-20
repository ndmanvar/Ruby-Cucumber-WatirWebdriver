class OrbitzHomePage
  include PageObject

  def searchReservationsBox
  	@browser.element(:id => 'search')
  end

  def rightRailAd
  	@browser.element(:css => '[alt=Advertisement]')
  end

  def goStayPlayMenu
  	@browser.element(:class => 'exploreView')
  end

end