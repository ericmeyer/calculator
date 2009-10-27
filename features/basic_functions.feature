Feature: Basic Functions
  In order to perform basic calculations
  As a user
  I want to add/subtract/multiply/divide
  
  Scenario: Addition with single digits
    Given I click "1"
    Then the prop "display" should have text of "1"
    And I click "plus"
    And I click "2"
    Then the prop "display" should have text of "2"
    When I click "equals"
    Then the prop "display" should have text of "3"
