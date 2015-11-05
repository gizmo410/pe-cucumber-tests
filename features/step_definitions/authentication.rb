Given(/^User is logged in$/) do

  visit('http://test10g.hln.be.persgroep.be/hln/nl/1/home/index.dhtml')

  click_link('Aanmelden')

  iframe_id = find("div#ssoiframe iframe")[:id]
  browser = page.driver.browser
  browser.switch_to.frame(iframe_id)
  find('#login_email').set('dev.team.hydra@persgroep.be')
  find('#login_password').set('teamhydra')
  find('#login_submit').click
  browser.switch_to.default_content

  expect(find("#header [data-sso-content-type=username]")).to have_content("Team Hydra")

end

And(/^User has (.*) as favourite city$/) do |favouriteCity|

  resetFavouriteCityToHalle

  visit('http://hlnregio.test.persgroep.be/regio/nieuws-uit-'+favouriteCity.downcase)

  find("#favorite-dropdown").click
  within ".modal.modal--favorite" do
    find(".button.favoritize").click
  end

  page.should have_css("button#favorite-dropdown.js-is-active-regioncheck")

end

def resetFavouriteCityToHalle
  visit('http://hlnregio.test.persgroep.be/regio/nieuws-uit-halle')
  find("#favorite-dropdown").click
  within ".modal.modal--favorite" do
    find(".button.favoritize").click
  end

  page.should have_css("button#favorite-dropdown.js-is-active-regioncheck")
end