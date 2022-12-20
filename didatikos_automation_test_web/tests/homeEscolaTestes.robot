*** Settings ***

Library      Browser

Resource        ../pages/loginPage.robot
Resource        ../Resources/baseTestes.robot
Resource        ../pages/homeEscolaPage.robot

Test Setup           Iniciar testes     


*** Variables ***
${VALUE_VAZIO}=


*** Test Cases ***
Validar Quadro de Aulas
    Login com perfil Escola  
    Acessar Quadro de Aulas

Validar Ambiente de Treinamento
    Login com perfil Escola
    Acessar Ambiente de Treinamento

Validar Avaliações / Simulados
    Login com perfil Escola
    Acessar Avaliações / Simulados

Validar Eventos
    Login com perfil Escola
    Acessar Eventos


    