class RentalsPage
  include PageObject

  def searchResults
    @browser.element(:id => 'srpResultsView-will-fail')
  end

end
