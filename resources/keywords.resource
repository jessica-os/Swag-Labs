


*** Settings ***
Library     SeleniumLibrary
Resource    variables.resource


*** Keywords ***
Abrir Navegador
    [Documentation]    Abre o navegador na página de login
    Open Browser    ${URL_LOGIN}    chrome
    Maximize Browser Window

Fechar Navegador
    [Documentation]    Fecha o navegador
    Close All Browsers

Dado que o usuário acesse a página de login
    [Documentation]    Acessa a página de login
    Go To    ${URL_LOGIN}
    Wait Until Element Is Visible    id=${ID_CAMPO_USUARIO}

Quando o usuário inserir as credenciais
    [Arguments]    ${usuario}    ${senha}
    Input Text    id=${ID_CAMPO_USUARIO}    ${usuario}
    Input Password    id=${ID_CAMPO_SENHA}    ${senha}

E clica no botão de login
    Click Button    id=${ID_BOTAO_LOGIN}

Então o usuário deve ser direcionado para a página inicial do site
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Element Text Should Be    ${locator}    ${TITULO_PAGINA_LOGADA}

Então o sistema deve exibir uma mensagem de erro
    [Arguments]    ${mensagem_esperada}
    Wait Until Element Is Visible    ${LOCATOR_ERRO_LOGIN}
    Element Text Should Be    ${LOCATOR_ERRO_LOGIN}    ${mensagem_esperada}
