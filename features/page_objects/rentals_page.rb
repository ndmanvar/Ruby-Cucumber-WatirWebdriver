class RentalsPage
  include PageObject

  def searchResults
    @browser.element(:id => 'srpResultsView')
  end

end
