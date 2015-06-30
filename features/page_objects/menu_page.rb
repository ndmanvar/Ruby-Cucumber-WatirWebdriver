class Menu
  include PageObject

  def link(text)
  	@browser.element(:css, ".#{text.downcase.gsub(' ', '-')}")
  end

end
