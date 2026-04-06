*** Settings ***
# Library    SeleniumLibrary
Resource          ../main.robot

*** Variables ***
${BASE_URL}    https://robot-framework-organo.vercel.app/

*** keywords ***
Dado que eu acesse o Organo
    [Documentation]    Abre Chrome/Chromium em modo headless
    ${options}=    Evaluate    selenium.webdriver.ChromeOptions()    selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --disable-extensions
    Call Method    ${options}    add_argument    --start-maximized
    Open Browser    ${BASE_URL}    chrome    options=${options}

Fechar o navegador
    Close Browser