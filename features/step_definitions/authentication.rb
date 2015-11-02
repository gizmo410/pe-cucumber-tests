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
  # browser.switch_to.frame(page)
  expect(find("#hdr_logintime > div > ul > li.sso-profile.sso-authenticated > a > span")).to have_content("Team Hydra")

end