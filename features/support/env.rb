require 'selenium-webdriver'
require 'rspec'

require_relative("../pages/basic_auth")
require_relative("../pages/dropdown")
require_relative("../pages/checkboxes")
#Dir{"../pages/*.rb"}.each { |file| require_relative file }

driver_path = File.join(File.dirname(__FILE__), "..", "..", "drivers", "chromedriver")

Before do
  @browser = Selenium::WebDriver.for :chrome, driver_path: driver_path
  @browser.manage.timeouts.implicit_wait = 10
  @browser.manage.timeouts.page_load = 10

  @basic_auth = BasicAuth.new @browser
  @dropdown = Dropdown.new @browser
  @checkbox = Checkboxes.new @browser
end

After do
  @browser.quit
end