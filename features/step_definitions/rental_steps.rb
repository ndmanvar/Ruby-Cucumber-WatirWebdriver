Then 'I should see rental search results' do
  page = RentalsPage.new @browser

  # wait until the serach results element is present
  page.searchResults.wait_until_present

  # sleeping so we can see the results
  sleep 3
end
