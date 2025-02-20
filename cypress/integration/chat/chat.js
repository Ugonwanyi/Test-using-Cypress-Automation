import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given("I navigate to the Demoblaze website", () => {
  cy.visit("https://www.demoblaze.com/");
});

When("I click the signup button", () => {
  cy.get("#signin2").click();
  cy.wait(1000);
});

Then("the signup page should be displayed", () => {
    cy.get('#signin2').should('be.visible');
});

Then("I fill the username textbox", () => {
  cy.get("#sign-username").type("tester")
});

Then("I leave the password textbox empty", () => {
    cy.get("#sign-password").clear();
  });

  Then("I fill the password textbox", () => {
    cy.get("#sign-password").type("tester")
  });
  
  Then ('I enter an existing username and password', function(){
    cy.get('#sign-username').type("ugonwanyi")
    cy.get('#sign-password').type("ugo@dblaze123")
})
  Then("I leave the username textbox empty", () => {
      cy.get("#sign-username").clear();
    });

Then("I confirm the sign-up", () => {
  cy.get("button[onclick='register()']").click();
});

Then("I should see an error message", () => {
 cy.on("window:alert", (alertText) => {
   expect(alertText).to.contain("This user already exist.");
});
});

Then('the password should not be displayed in plaintext', () => {
  cy.get('#sign-password')
   .should('have.attr', 'type', 'password');
});

Then ('I leave the username and password field empty', () => {
  cy.get("#sign-username").clear();
  cy.get("#sign-password").clear();
});

Then("I should see a close and signup button", () => {
  cy.get(".modal-footer .btn-secondary").should("be.visible");
  cy.get('button').contains('Close')
  cy.get('button').contains('Sign up')
});

  
  Then("I should see a Username textbox", () => {
      cy.get("#sign-username").should("be.visible");
    });

  Then("I should see a Password textbox", () => {
    cy.get("#sign-password").should("be.visible");  
});

When("I click the close button", () => {
  cy.get("div[id='signInModal'] div[class='modal-footer'] button:nth-child(1)").click();
});

Then("the sign-up modal should not be visible", () => {
  cy.get('#signInModal').should('not.be.visible');
});