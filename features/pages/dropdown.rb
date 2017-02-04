class Dropdown
  DROPDOWN_ELEMENT = {id: "dropdown"}

  def initialize(browser)
    @browser = browser
  end

  def visit page
    @browser.get "https://the-internet.herokuapp.com/#{page}"
  end

  def select option
    dropdown = @browser.find_element(DROPDOWN_ELEMENT)
    @selected_list = Selenium::WebDriver::Support::Select.new dropdown
    @selected_list.select_by(:text, option)
  end

  def selected_option
    @selected_list.selected_options[0].text
  end
end