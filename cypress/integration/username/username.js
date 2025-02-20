/// <reference types="cypress" />​

import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";


Given ('I navigate to Demoblaze website', function(){
    cy.visit("https://demoblaze.com/");
});

When ('I click the signup button', function(){
   cy.get('#signin2').click();   
});

When ('I enter valid login details', function(){
    cy.get('#sign-username').type("ugotest") 
    cy.get('#sign-password').type("dblazetest")
    cy.get("button[onclick='register()']").click();
       
});

Then ('I verify successful login with successful message', function(){

    cy.on("window:alert", (alertText) => {
        expect(alertText).to.contain("Sign up successful.");
    });
});
