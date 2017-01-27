driver_path = File.join(File.dirname(__FILE__), "..", "..", "drivers", "chromedriver")
puts driver_path

Given(/^I open a browser$/) do
  @browser = Selenium::WebDriver.for :chrome, driver_path: driver_path
  @browser.manage.timeouts.implicit_wait = 10
  @browser.manage.timeouts.page_load = 10
  puts "Browser is open"
end

When(/^I login with "([^"]*)" username and "([^"]*)" password$/) do |username, password|
  p "Login #{username} and password #{password} is entered"
  url = "https://#{username}:#{password}@the-internet.herokuapp.com/basic_auth"
  @browser.get url
end

Then(/^Succesful login message "([^"]*)" appears$/) do |message|
  print "Login message #{message} is verified"
  expect(@browser.find_element(:css, ".example p").text).to eq(message)
end