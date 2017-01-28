When(/^I login with "([^"]*)" username and "([^"]*)" password$/) do |username, password|
  url = "https://#{username}:#{password}@the-internet.herokuapp.com/basic_auth"
  @browser.get url
end

Then(/^Succesful login message "([^"]*)" appears$/) do |message|
  expect(@browser.find_element(:css, ".example p").text).to eq(message)
end

### dropdown feature ###

Given(/^I navigate to page "([^"]*)"$/) do |page_name|
  @browser.get "https://the-internet.herokuapp.com/#{page_name}"
end

When(/^I select "([^"]*)" from dropdown list$/) do |option|
  dropdown = @browser.find_element(id: "dropdown")
  @selected_list = Selenium::WebDriver::Support::Select.new dropdown
  @selected_list.select_by(:text, option)
end

Then(/^I verify selected element "([^"]*)"$/) do |expected_selected_option|
  actual_selected_option = @selected_list.selected_options[0].text
  expect(actual_selected_option).to eq expected_selected_option
end









