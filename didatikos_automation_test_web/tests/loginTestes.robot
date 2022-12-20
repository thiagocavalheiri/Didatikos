*** Settings ***

Library      Browser

Resource        ../pages/loginPage.robot
Resource        ../Resources/baseTestes.robot

Test Setup           Iniciar testes     


*** Variables ***
${VALUE_VAZIO}=


*** Test Cases ***
Validar login com sucesso aluno
    Preencher login        alicia@gmail.com        carlos2912        
    Verificar login com sucesso perfil aluno

Validar login com outro usuário escola
    Preencher login        didatikoseduca@gmail.com        carlos2912        
    Verificar login com sucesso perfil escola

Validar login inválido
    Preencher login        alicia@gmail.com         123
    Verificar login inválido

Validar login vazio 
    [Tags]        vazio
    Preencher login        ${VALUE_VAZIO}        ${VALUE_VAZIO}
    Verificar login vazio

