Feature: Demoblaze ecommerce website sign up validation

Application regression​

@chat

Scenario: Verify that the Signup page is accessible 
    Given I navigate to the Demoblaze website
    When I click the signup button
    Then the signup page should be displayed

Scenario: Verify Signup page has Username and Password textbox
    Given I navigate to the Demoblaze website
    When I click the signup button
    Then I should see a Username textbox
    Then I should see a Password textbox

Scenario: Verify Signup page has Close and Signup button
    Given I navigate to the Demoblaze website
    When I click the signup button
    Then I should see a close and signup button

Scenario: Signup is invalid when password field is empty
    Given I navigate to the Demoblaze website
    When I click the signup button
    Then I fill the username textbox 
    Then I leave the password textbox empty
    Then I confirm the sign-up
    Then I should see an error message "Please fill out Username and Password."

  Scenario: User enters valid credentials and signs up
    Given I navigate to the Demoblaze website
    When I click the signup button
    Then the signup page should be displayed
    When I enter a valid username and password
    Then I confirm the sign-up
    Then I should see a success message "Sign up successful"


Scenario: Signup is invalid when username field is empty
    Given I navigate to the Demoblaze website
    When I click the signup button
    Then I fill the password textbox
    Then I leave the username textbox empty
    Then I confirm the sign-up
    Then I should see an error message "Please fill out Username and Password."

Scenario: User tries to sign up with an existing username
    Given I navigate to the Demoblaze website
    When I click the signup button
    Then I enter an existing username and password
    Then I confirm the sign-up
    Then I should see an error message "This user already exist."

Scenario: Verify user cannot sign up without filling both mandatory fields
    Given I navigate to the Demoblaze website
    When I click the signup button
    And I leave the username and password field empty
    Then I confirm the sign-up
    Then I should see an error message "Please fill out Username and Password."

Scenario: Verify that the password field masks entered password
    Given I navigate to the Demoblaze website
    When I click the signup button
    Then I fill the password textbox 
    Then the password should not be displayed in plaintext

Scenario: Verify Close button shuts down the Sign-up modal
    Given I navigate to the Demoblaze website
    And I click the signup button
    Then the signup page should be displayed
    When I click the close button
    Then the sign-up modal should not be visible