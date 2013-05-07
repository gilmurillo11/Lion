Feature: lets search amazon for cucumbers
  Scenario: A user goes to amazon.com and searches for cucumbers
    Given a user at amazon.com
    When they search for "fernando valenzuela"
    Then the results return for "fernando valenzuela"