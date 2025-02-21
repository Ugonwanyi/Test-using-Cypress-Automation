Feature: Demoblaze ecommerce website sign up validation

Application regression​

@signup

Scenario: Verify that the username textbox is active
    Given I navigate to Demoblaze website
    When I click the signup button
    When I enter valid login details
    Then I verify successful login with successful message

Scenario: Verify that the Signup page is accessible
    Given I navigate to Demoblaze website
    When I click the signup button
    Then the signup page should be displayed

Scenario: Signup is invalid when only one mandatory field is filled
    Given I navigate to Demoblaze website
    When I click the signup button
    Then I leave the username or password field empty
    Then I confirm the sign-up
    Then I should see an error message