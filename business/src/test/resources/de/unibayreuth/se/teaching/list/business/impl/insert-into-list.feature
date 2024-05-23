Feature: Insert elements sorted into list
  We need to be able to insert elements in a sorted manner into the list

  Scenario: Insert element at beginning
    Given I have elements with the following values in my list:
      | 2.0 |
      | 3.0 |
    When I insert an element with value 1.0
    Then the list should contain 3 elements
    And the list should contain 1.0
    And the list should be sorted:
      | 1.0 |
      | 2.0 |
      | 3.0 |

  Scenario: Insert element at the end
    Given I have elements with the following values in my list:
      | 1.0 |
      | 2.0 |
    When I insert an element with value 3.0
    Then the list should contain 3 elements
    And the list should contain 3.0
    And the list should be sorted:
      | 1.0 |
      | 2.0 |
      | 3.0 |


  Scenario: Insert element in the middle
    Given I have elements with the following values in my list:
      | 1.0 |
      | 3.0 |
    When I insert an element with value 2.0
    Then the list should contain 3 elements
    And the list should contain 2.0
    And the list should be sorted:
      | 1.0 |
      | 2.0 |
      | 3.0 |