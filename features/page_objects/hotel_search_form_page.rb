class OrbitzHotelSearchPage
  include PageObject

  def whereInputBox
  	@browser.text_field(:name => 'hotel.keyword.key')
  end

  def checkIn
    @browser.element(:name => 'hotel.chkin')
  end

  def checkOut
    @browser.element(:name => 'hotel.chkout')
  end

  def calendarDay(day, monthYear)
    @browser.element(:xpath => "//div[@class='calendarBody']//table[@summary='#{monthYear}']//a[text()='#{day}']")
  end

  def searchButton
    @browser.element(:name => 'search')
  end

  def suggestion(name)
    @browser.element(:xpath => "//div[@class='smartFill']//*[text()='#{name}']")
  end

  def firstSuggestion
    @browser.element(:css => "li.odd.selected > span")
  end

end