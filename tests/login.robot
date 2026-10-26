*** Settings ***
Resource          ../resources/keywords.resource

Suite Setup       Abrir Navegador
Suite Teardown    Fechar Navegador


*** Test Cases ***
Login realizado com sucesso
    [Documentation]    Verifica o login com credenciais válidas
    Dado que o usuário acesse a página de login
    Quando o usuário inserir as credenciais    ${USUARIO}    ${SENHA}
    E clica no botão de login
    Então o usuário deve ser direcionado para a página inicial do site    ${LOCATOR_PAGINA_LOGADA}

Falha no login com usuário inválido
    [Documentation]    Verifica a mensagem para usuário inválido
    Dado que o usuário acesse a página de login
    Quando o usuário inserir as credenciais    ${USUARIO_INVALIDO}    ${SENHA}
    E clica no botão de login
    Então o sistema deve exibir uma mensagem de erro    ${MENSAGEM_USUARIO_INVALIDO}

Falha no login com senha inválida
    [Documentation]    Verifica a mensagem para senha inválida
    Dado que o usuário acesse a página de login
    Quando o usuário inserir as credenciais    ${USUARIO}    ${SENHA_INVALIDA}
    E clica no botão de login
    Então o sistema deve exibir uma mensagem de erro    ${MENSAGEM_SENHA_INVALIDA}

Falha no login com usuário em branco
    [Documentation]    Verifica a mensagem quando o usuário não é informado
    Dado que o usuário acesse a página de login
    Quando o usuário inserir as credenciais    ${EMPTY}    ${SENHA}
    E clica no botão de login
    Então o sistema deve exibir uma mensagem de erro    ${MENSAGEM_USUARIO_EM_BRANCO}

Falha no login com senha em branco
    [Documentation]    Verifica a mensagem quando a senha não é informada
    Dado que o usuário acesse a página de login
    Quando o usuário inserir as credenciais    ${USUARIO}    ${EMPTY}
    E clica no botão de login
    Então o sistema deve exibir uma mensagem de erro    ${MENSAGEM_SENHA_EM_BRANCO}
