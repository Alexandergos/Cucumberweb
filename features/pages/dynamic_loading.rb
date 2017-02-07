class DynamicLoading < PageActions
  START_BUTTON = {css: '#start button'}
  FINISH_ELEMENT = {css: '#finish'}

  def path
    "/dynamic_loading"
  end

  # EXAMPLE_PAGE["#{@example}"]
  # URI::HTTPS.build(host: 'https://the-internet.herokuapp.com/dynamic_loading/', query: EXAMPLE_PAGE.to_query)

  def start_button
    @browser.find_element(START_BUTTON)
  end

  def finish_element
    @browser.find_element(FINISH_ELEMENT)
  end

  def success_message_displayed?
    wait_for(10){finish_element.displayed?}
  end
end