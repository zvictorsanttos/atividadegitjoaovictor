// Ações de interações com a página

//Criar uma class com a interações

// 2 ações acessar login, preencher login

const el = require ('./elements').ELEMENTS;  // Requerimento do arquivo

class Logon {
   acessarLogin(){
    cy.visit('http://localhost:3000/');
   }
   preencherLogin(){
    cy.get(el.id).type(Cypress.env('created0ngID'));
    cy.get(el.buttonLogin).click();
   }
}

export default new Logon ();