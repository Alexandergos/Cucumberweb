@checkboxes
  Feature: Working with checkboxes
    
    @one
    Scenario: simple verification of selected checkbox
      Given I navigate to page "checkboxes"
      Then I check if 2nd box is selected