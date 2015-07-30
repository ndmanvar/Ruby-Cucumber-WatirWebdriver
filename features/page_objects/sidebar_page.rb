class Sidebar
  include PageObject

  def itemByText(text)
  	sidebar.element(:xpath => "//ul/li[contains(@class, 'navLink')]/a[text()='#{text}']")
  end

  def subItemByText(text)
  	sidebar.element(:xpath => "//ul/li[contains(@class, 'navLink') and contains(@class, 'active')]//ul//a[text()='#{text}']")
  end

  def sidebar
  	@browser.element(:class => 'side-nav')
  end

end
