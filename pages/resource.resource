*** Settings ***
Library    SeleniumLibrary
Library    ../data/login_data.py
Variables  ../data/login_data.py
# *** Variables ***
# ${URL}              https://www.saucedemo.com/
# ${USER}             standard_user
# ${MDP}              secret_sauce
# ${LOCATOR_NAME}     id:user-name
# ${LOCATOR_MDP}      id:password
# ${LOCATOR_BUTTON}   id:login-button
# ${error_message}    xpath=//h3[@data-test='error']

*** Keywords ***
Saisir user-name
    [Arguments]    ${username}
    Input Text    ${LOCATOR_NAME}    ${username}
Saisir password
    [Arguments]    ${username}
    Input Text    ${LOCATOR_MDP}    ${MDP}
Cliquer sur login
    Click Button    ${LOCATOR_BUTTON}
Verifier la page d'accueil
    ${text}    Get Text    class:title
    Should Be Equal As Strings    ${text}    Products
    Log To Console    ${text}

Verifier le message d'erreur
    ${text}    Get Text    ${error_message}
    Log To Console    'message: ${text}'
    Should Be Equal As Strings    ${text}    Epic sadface: Username and password do not match any user in this service
    Log To Console    ${text}

