class Homepage
  include PageObject

  def toolbar
  	@browser.element(:css, '.region.region-header')
  end

  def getFiredUpImg
  	@browser.element(:css, '.marquee-text-img img')
  end

end