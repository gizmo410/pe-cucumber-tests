require 'capybara/cucumber'

Capybara.default_driver = :selenium
Capybara.run_server = false

After do |scenario|
  if scenario.failed?
    page.driver.browser.save_screenshot("html-report/#{scenario.__id__}.png")
    embed("#{scenario.__id__}.png", "image/png", "SCREENSHOT")
  end
end