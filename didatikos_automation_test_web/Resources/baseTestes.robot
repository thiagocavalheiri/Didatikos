*** Settings ***

Library        Browser

*** Keywords ***

Iniciar testes
    ${old_timeout} =    Set Browser Timeout    30 seconds
    Open Browser        http://didatikos-hmg.didatikos.com.br/ava/login       headless=False                
    Set Browser Timeout    ${old_timeout}
    