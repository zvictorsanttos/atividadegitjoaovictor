/// <reference types="cypress" />

import {Given, When, Then, And, But} from 'cypress-cucumber-preprocessor/steps';
import Cadastro from '../../support/pages/Cadastro';


Given(/^que esteja na página cadastro$/, () => {
    Cadastro.acessarCadastro()
});    

When(/^informar os dados para cadastro$/, () => {
	Cadastro.preencherCadastro ();
});

Then(/^deverá "validarCadastroDeOng"$/, () => {
    Cadastro.validarCadastroDeOng();              
});
//     it.skip('Usuário deve conseguir realizar um login', () => {
       
//         // const create0ngID = Cypress.env('created0ngID');
//         //     cy.log(create0ngID);

//             // cy.visit('http://localhost:3000/');
//             // cy.get('input').type(Cypress.env('created0ngID'));
//             // cy.get('.button').click();

//             // 2 ações acessar login, preencher login
//             // 2 elementos = id, button-login
//             Logon.acessarLogin();
//             Logon.preencherLogin();
        
// });
//     it.skip('Usuário deve conseguir realizar o logout', () => {
        
//         cy.login(); // Codigo no commands.js
//         cy.get('button').click();
// });

//     it.skip('Usuário deve conseguir cadastrar novos casos', () => {
        
//         // cy.login();
//         // cy.get('.button').click();
//         // cy.get('[placeholder="Título do caso"]').type('Animais de Rua');
//         // cy.get('textarea').type('Vaquinha para ajudar animais de rua');
//         // cy.get('[placeholder="Valor em reais"]').type('5000');
        
//         // // Sempre antes de disparar requição precisa dizer qual rota quer monitar
        
//         // cy.route('POST', '**/incidents').as('newIncident');
        
//         // cy.get('.button').click();

//         // cy.wait('@newIncident').then((xhr) => {
//         //     expect(xhr.status).to.eq(200); //Garantir que o stauts seja 200.
//         //     expect(xhr.response.body).has.property('id'); // Garantir que o body vai ter Id
//         //     expect(xhr.response.body.id).is.not.null; // Garantir que a resposta não seja nula 
//         // })
//         newIncident.acessarLogin();
//         newIncident.preencherFormulario();
//         newIncident.validarCadastroDeNovoCaso();

// });
//     it.skip('Usuarios devem conseguir excluir um caso', () => {
//         // cy.createNewIncident();
//         // cy.login(); 
        
//         // cy.route('DELETE','**/incidents/*').as('deleteIncident');

//         // cy.get('ul > :nth-child(1) > button > svg').click();

//         // cy.wait('@deleteIncident').then((xhr) => {
//         //     expect(xhr.status).to.eq(204);
//         //     expect(xhr.response.body).to.be.empty;
//         // })
//         DeleteIncident.acessarCasos();
//         DeleteIncident.deletarCasos();
//         DeleteIncident.validarCasosDeletados();
// });
  
    

