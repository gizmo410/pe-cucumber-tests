
Then(/^the city shown should be its favourite city$/) do
  expect(find("h1.regio__title")).to have_content("Beveren")
  save_sceenshot('html-report/step1_success.png')
end