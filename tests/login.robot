*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/resource.resource 
Variables  ../data/login_data.py
Test Setup        Open Browser    https://www.saucedemo.com/    firefox    remote_url=http://192.168.1.55:4444/wd/hub


*** Test Cases ***
Login with valid credentials
    [Documentation]    login avec valid cred
    [Tags]    login    smoke
    # Open Browser    https://www.saucedemo.com/    firefox    remote_url=http://192.168.1.55:4444/wd/hub
    Saisir user-name    ${USER}
    Saisir password    ${MDP}
    Cliquer sur login
    Verifier la page d'accueil
    [Teardown]    Close Browser

Login with invalid credentials
    [Documentation]    login avec valid cred
    [Tags]    login    smoke
    # Open Browser    https://www.saucedemo.com/    firefox    remote_url=http://192.168.1.55:4444/wd/hub
    Saisir user-name    ${USER}
    Input Password    id:password    bhbhbuiknjpllj
    Cliquer sur login
    Verifier le message d'erreur
     [Teardown]    Close Browser
     
excute avant chaque test
    Log To Console    Hello there avant chaque test
    # Open Browser    https://www.saucedemo.com/    firefox    remote_url=http://192.168.1.55:4444/wd/hub
    Close All Browsers

# ***Settings***
# Library    SeleniumLibrary
# Library    .venv/Lib/site-packages/robot/libraries/XML.py

# *** Test Cases ***
# Login with valid credentials
#     [Documentation]    login avec valid cred
#     Open Browser    https://www.saucedemo.com/    Chrome
#     Input Text    id:user-name    standard_user
#     Input Password    id:password    secret_sauce
#     Click Button    id:login-button
#     ${text}    Get Text    class:title
#     Should Be Equal As Strings    ${text}    Products
#     Log To Console    ${text}
#     # [Teardown]    Close All Browsers
    

