Feature: Standard login

  Scenario: Authentication with valid credentials
    Given I open a browser
    When I login with "admin" username and "admin" password
    Then Succesful login message "Congratulations! You must have the proper credentials." appears
