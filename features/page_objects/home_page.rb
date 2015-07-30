class HomePage
  include PageObject

  def toolbar
  	@browser.element(:class => 'nav-menu')
  end

  def logo
  	if ENV['browserName'] == "internet explorer"
  		@browser.element(:id => 'brand-logo')
  	else
	  	@browser.element(:class => 'logo-image')
  	end
  end

  def twentyPercentOff
  	@browser.element(:title => 'wshp_072815_banner')
  end

  def endOfSummerSale
  	@browser.element(:title => 'wshp-072915-s1')
  end

  def signUpSavePopupCloseBtn
  	@browser.element(:id => 'ad_email_btn-close')
  end

end