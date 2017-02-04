class BasicAuth

  SUCCESS_MESSAGE = {css: ".example p"}

  def initialize(browser)
    @browser = browser
  end

  def with(username, password)
    url = "https://#{username}:#{password}@the-internet.herokuapp.com/basic_auth"
    @browser.get url
  end

  def success_message
    @browser.find_element(SUCCESS_MESSAGE)
  end
end