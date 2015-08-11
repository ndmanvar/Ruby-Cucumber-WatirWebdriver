class HeaderToolbar
  include PageObject

  def searchBox
  	@browser.text_field(:css => '#search-form .query')
  end

  def instantResultSuggestion(domain)
	@browser.element(:css => ".instant-results li.result[data-domain='#{domain}']")
  end

end