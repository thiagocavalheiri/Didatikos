*** Settings ***
Library        Browser

*** Keywords ***
Preencher login
    [Arguments]        ${VALUE_EMAIL}        ${VALUE_SENHA}        
    
    Get Title        ==        Login - Didatikos
    Fill Text        id=email        ${VALUE_EMAIL}
    Fill Text        id=password        ${VALUE_SENHA}
    Click            xpath=//button 

Verificar login com sucesso perfil aluno
    Get Element    xpath=//a[text()='Quadro de Aulas']      
    Take Screenshot

Verificar login com sucesso perfil escola
    Get Element        xpath=//title[text()='Página Inicial - Didatikos']
    Take Screenshot

Verificar login inválido
    Get Text                xpath=//*[text()='Credenciais inválidas!']        ==        Credenciais inválidas!

Verificar login vazio
    Get Text                xpath=//*[text()='O campo senha é obrigatório.']        ==      O campo senha é obrigatório.  
    Get Text                xpath=//*[text()='O campo e-mail é obrigatório.']        ==      O campo e-mail é obrigatório.

Login com perfil Escola
    Preencher login        didatikoseduca@gmail.com        carlos2912
    Verificar login com sucesso perfil escola