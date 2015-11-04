require 'capybara/cucumber'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.run_server = false
Capybara.default_max_wait_time = 5

After do |scenario|
  if scenario.failed?
    page.driver.browser.save_screenshot("html-report/#{scenario.__id__}.png")
    embed("#{scenario.__id__}.png", "image/png", "SCREENSHOT")
  end
end