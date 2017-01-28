@login
Feature: Standard login

  @basic_auth
  Scenario: Authentication with valid credentials
    When I login with "admin" username and "admin" password
    Then Succesful login message "Congratulations! You must have the proper credentials." appears
