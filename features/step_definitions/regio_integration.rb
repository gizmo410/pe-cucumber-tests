Then(/^the city shown should be (.*)$/) do |favouriteCity|

  within "h1.regio__title" do
    page.should have_content favouriteCity
  end

  save_sceenshot('html-report/step1_success.png')
end