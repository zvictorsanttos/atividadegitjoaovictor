/// <reference types="cypress" />

import {Given, When, Then, And, But} from 'cypress-cucumber-preprocessor/steps';
import newIncident from '../../support/pages/newIncident';

Given(/^esteja logado com uma conta valida$/, () => {
	newIncident.acessarLogin();
});

When(/^preencher o formulario de cadastro$/, () => {
	newIncident.preencherFormulario();
});

Then(/^deverá conseguir cadastrar um novo caso$/, () => {
	newIncident.validarCadastroDeNovoCaso();
});
