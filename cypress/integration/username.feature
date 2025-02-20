Feature: Demoblaze ecommerce website sign up validation

Application regression​

@username

Scenario: Verify that the username textbox is active
    Given I navigate to Demoblaze website
    When I click the signup button
    When I enter valid login details
    Then I verify successful login with successful message