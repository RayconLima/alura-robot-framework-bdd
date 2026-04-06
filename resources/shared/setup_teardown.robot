*** Settings ***
# Library    SeleniumLibrary
Resource          ../main.robot

*** Variables ***
${BASE_URL}    https://robot-framework-organo.vercel.app/

*** keywords ***
Dado que eu acesse o Organo
    Open Browser    ${BASE_URL}    chrome    options=add_argument("--headless");add_argument("--no-sandbox");add_argument("--disable-dev-shm-usage")

Fechar o navegador
    Close Browser