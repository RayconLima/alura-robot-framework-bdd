*** Settings ***
Resource           ../resources/main.robot
Test Setup         Dado que eu acesse o Organo
Test Teardown      Fechar o navegador

*** Variables ***
${BOTAO_CARD}             id:form-botao

*** Test Cases ***
Verificar se quando o campo obrigatório não for preenchido corretamente o sistema exibe uma mensagem de campo obrigatório
    Dado que eu clique o botão criar card
    Então o sistema deve apresentar uma mensagem de campo obrigatório