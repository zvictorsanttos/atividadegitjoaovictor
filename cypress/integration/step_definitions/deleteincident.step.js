/// <reference types="cypress" />

import {Given, When, Then, And, But} from 'cypress-cucumber-preprocessor/steps';
import DeleteIncident from '../../support/pages/deleteIncident';

Given(/^esteja na pagina de lista de casos cadastrados$/, () => {
	DeleteIncident.acessarCasos();
});

When(/^realizar a ação de excluir caso$/, () => {
	DeleteIncident.deletarCasos();
});

Then(/^deverá conseguir excluir um caso cadastrado$/, () => {
	DeleteIncident.validarCasosDeletados();
});
