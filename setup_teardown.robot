*** Settings ***
Library    SeleniumLibrary

*** keywords ***
Dado que eu acesse o Organo
    Open Browser    http://localhost:3000/    chrome

Fechar o navegador
    Close Browser