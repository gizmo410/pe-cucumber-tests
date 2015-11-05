Then(/^the city shown should be (.*)$/) do |favouriteCity|

  within "h1.regio__title" do
    page.should have_content favouriteCity.upcase
  end

end