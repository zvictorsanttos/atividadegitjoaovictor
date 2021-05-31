/// <reference types="cypress" />

import {Given, When, Then, And, But} from 'cypress-cucumber-preprocessor/steps';
import Logon from '../../support/pages/Logon';


Given(/^esteja na página de login$/, () => {
	Logon.acessarLogin();
});

When(/^informar dados necesarios$/, () => {
	Logon.preencherLogin();
});

