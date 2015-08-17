class HomePage
  include PageObject

  def topBannerAd
  	@browser.element(:css, '#row-top .banner-ad')
  end

  def featuredNews
  	@browser.element(:id => 'featured-news')
  end

  def logo
  	@browser.element(:id => 'logo')
  end

  def toolbar
  	Toolbar.new(@browser)
  end

  def loginButton
  	@browser.element(:class => 'zul-bar-user-item-login')
  end

end