class HomePage
  include PageObject

  def locationTextBox
  	@browser.text_field(:id => 'srchHomeLocation')
  end

end