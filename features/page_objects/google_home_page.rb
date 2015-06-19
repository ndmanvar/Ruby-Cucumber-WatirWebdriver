class GoogleHomePage
  include PageObject

  def searchBox
  	@browser.text_field(:css, '[name=q]')
  end

end