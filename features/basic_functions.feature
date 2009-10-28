Feature: Basic Functions
  In order to perform basic calculations
  As a user
  I want to add/subtract/multiply/divide
  
  Scenario: Addition
    Given I click "1"
    Then the prop "display" should have text of "1"
    When I click "plus"
    Then the prop "display" should have text of "1 +"
    When I click "2"
    Then the prop "display" should have text of "1 + 2"
    When I click "equals"
    Then the prop "display" should have text of "3"
