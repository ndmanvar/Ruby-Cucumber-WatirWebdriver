class GameList
  include PageObject

  def entry(name)
    list.element(:xpath => "//tr[@class='dr']//a[text()='#{name}']")
  end

  def list
    @browser.element(:id => 'game-list')
  end

end