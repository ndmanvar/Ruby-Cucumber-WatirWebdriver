class MySprint
  include PageObject

  def username
    @browser.text_field(:id => 'txtLoginUsernameDL')
  end

  def password
    @browser.text_field(:id => 'txtLoginPasswordDL')
  end

  def signin
  	@browser.element(:id => 'btnLoginSubmitDL')
  end

end