class Product
  include PageObject

  def productItemByText(text)
  	text = text.downcase.gsub(' ', '-')
    @browser.element(:css => "li.product-cell[data-product*='#{text}']")
  end

end