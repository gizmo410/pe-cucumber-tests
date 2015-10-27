
Given(/^User is logged in$/) do

  visit('http://www.hln.be')

  click_link('Aanmelden')
  within("#ssoiframe") do
    find('#login_email').set('a@example.com')
    find('#login_password').set('qwerty')
    click_button '#login_submit'
  end

end