const el = require ('./elements').ELEMENTS;

class Cadastro {
    acessarCadastro (){
        cy.visit('http://localhost:3000/register');
    }

    preencherCadastro (){
        cy.get(el.id).type('Compasso QA Test')
        .should('have.value', 'Compasso QA Test');
        
        cy.get(el.email).type('qacompasso@compasso.com.br')
        .should('have.value', 'qacompasso@compasso.com.br');
        
        cy.get(el.whatsapp).type('81995591069')
        .should('have.value', '81995591069');
        
        cy.get(el.city).type('Vitoria de Santo Antão')
        .should('have.value', 'Vitoria de Santo Antão');
        
        cy.get(el.UF).type('PE')
        .should('have.value', 'PE');
        
        cy.route('POST', '**/ongs').as('post0ng');
        
        cy.get(el.buttonCadastro).click();
    }       
    validarCadastroDeOng (){
        cy.wait('@post0ng').then((xhr) => {
            expect(xhr.status).be.eq(200);
            expect(xhr.response.body).has.property('id');
            expect(xhr.response.body.id).is.not.null;


        })
    }          
}

export default new Cadastro ();


