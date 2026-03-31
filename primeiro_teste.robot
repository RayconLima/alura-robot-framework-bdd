*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Abrir navegador e acessar site do Organo
    Open Browser    http://localhost:3000/    chrome
    Sleep    5s

Preencher os campos do formulário de cadastro
    Input Text    id:form-nome    João Silva
    Input Text    id:form-cargo    Desenvolvedor
    Input Text    id:form-imagem    https://picsum.photos/200/300
    Click Element    class:lista-suspensa
    Click Element    //option[contains(., 'Programação')]
    Sleep    1s
    Click Button    id:form-botao
    Element Should Be Visible    class:colaborador
    sleep    5s    