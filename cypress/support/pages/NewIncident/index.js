const el = require ('./elements').ELEMENTS;

class newIncident {
    
    acessarLogin(){
        cy.login();
        cy.get('.button').click();
    }
    
    preencherFormulario(){
        cy.get(el.id).type('Animais de Rua');
        cy.get(el.text).type('Vaquinha para ajudar animais de rua');
        cy.get(el.valor).type('5000');
        
        // Sempre antes de disparar requição precisa dizer qual rota quer monitar
        
        cy.route('POST', '**/incidents').as('newIncident');
        
        cy.get(el.buttonNovoCaso).click();
    }

    validarCadastroDeNovoCaso(){
        
        cy.wait('@newIncident').then((xhr) => {
            expect(xhr.status).to.eq(200); //Garantir que o stauts seja 200.
            expect(xhr.response.body).has.property('id'); // Garantir que o body vai ter Id
            expect(xhr.response.body.id).is.not.null; // Garantir que a resposta não seja nula 
        })

    }
}

export default new newIncident();

