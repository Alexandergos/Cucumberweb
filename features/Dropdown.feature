@dropdown
  Feature: selecting elements from dropdown list

    @option1
    Scenario Outline: selecting option 1 from dropdown
      Given I navigate to page "dropdown"
      When I select "<Selection>" from dropdown list
      Then I verify selected element "<Selection>"

    Examples:
      | Selection   |
      | Option 1    |
      | Option 2    |