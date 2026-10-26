
*** Variables ***
${URL_LOGIN}                    https://www.saucedemo.com/
${NOME_PAGINA_LOGIN}             Swag Labs

${ID_CAMPO_USUARIO}              user-name
${USUARIO}                       standard_user
${ID_CAMPO_SENHA}                password
${SENHA}                         secret_sauce
${ID_BOTAO_LOGIN}                login-button

${USUARIO_INVALIDO}              teste
${SENHA_INVALIDA}                1234

${LOCATOR_ERRO_LOGIN}            css:[data-test="error"]
${MENSAGEM_USUARIO_INVALIDO}     Epic sadface: Username and password do not match any user in this service
${MENSAGEM_SENHA_INVALIDA}       Epic sadface: Username and password do not match any user in this service
${MENSAGEM_USUARIO_EM_BRANCO}    Epic sadface: Username is required
${MENSAGEM_SENHA_EM_BRANCO}      Epic sadface: Password is required

${LOCATOR_PAGINA_LOGADA}         //span[@class="title"]
${TITULO_PAGINA_LOGADA}          Products
