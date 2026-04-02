*** Settings ***
Resource           ../resources/main.robot
Test Setup         Dado que eu acesse o Organo
Test Teardown      Fechar o navegador

*** Test Cases ***
Verificar se ao preencher os campos do formulário corretamente são inseridos na lista e se um novo card é criado no time esperado
    Dado que preencha os campos do formulário de cadastro
    E clique no botão criar card
    Então identificar o card no time esperado

Verificar se é possivel criar mais de um card se preenchermos os campos corretamente
    Dado que preencha os campos do formulário de cadastro
    E clique no botão criar card
    Então identificar 3 cards no time esperado

Verificar se é possivel criar card para cada time disponível se preenchermos os campos corretamente
    Dado que preencha os campos do formulário de cadastro
    Então criar e identificar 1 card em cada time disponível

    # FOR    ${time}    IN    @{selecionar_times}
    #     Click Element    ${CAMPO_TIME}
    #     Click Element    ${time}
    #     Dado que preencha os campos do formulário de cadastro
    #     E clique no botão criar card
    #     Então identificar o card no time esperado
    # END

