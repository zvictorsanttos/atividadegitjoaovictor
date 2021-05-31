const el = require ('./elements').ELEMENTS;

class DeleteIncident{
    
    acessarCasos(){
        cy.createNewIncident();
        cy.login();

    }
    deletarCasos(){
        cy.route('DELETE','**/incidents/*').as('deleteIncident');
        cy.get(el.buttonDelete).click();

    }
    
    validarCasosDeletados(){
        
        cy.wait('@deleteIncident').then((xhr) => {
            expect(xhr.status).to.eq(204);
            expect(xhr.response.body).to.be.empty;
        })
    }
}

export default new DeleteIncident ();

