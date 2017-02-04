When(/^I login with "([^"]*)" username and "([^"]*)" password$/) do |username, password|
  @basic_auth.with(username, password)
end

Then(/^Succesful login message "([^"]*)" appears$/) do |message|
  expect(@basic_auth.success_message.text).to eq(message)
end

### dropdown feature ###

Given(/^I navigate to page "([^"]*)"$/) do |page|
  #instance_variable_get("@#{page}")
  @dropdown.visit page
end

When(/^I select "([^"]*)" from dropdown list$/) do |option|
  @dropdown.select option
end

Then(/^I verify selected element "([^"]*)"$/) do |expected_selected_option|
  actual_selected_option = @dropdown.selected_option
  expect(actual_selected_option).to eq expected_selected_option
end

##### checkboxes #####

Then(/^I check if 2nd box is selected$/) do
  expect(@checkboxes.is_checked? index)
end