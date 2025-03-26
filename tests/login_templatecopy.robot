*** Settings ***
Library     SeleniumLibrary
# Library     DataDriver  ../data/data.csv     dialect=excel    encoding=utf-8
Resource   ../templates/login_template.resource
Resource   ../pages/resource.resource 
Variables  ../data/login_data.py
# Test Template    afficher les donnees csv
# Test Setup    excute avant chaque test
Test Teardown    Close Browser

*** Test Cases ***
# Doing Test Credentials Correct for ${username} and ${password}  Default    UserData

## laiser deux espace entre les keywords,et entre les valeurs
Login with valid credentials
    [Documentation]    login avec valid cred
    [Tags]    login    smoke
    Open Browser    https://www.saucedemo.com/    firefox
    Saisir user-name    ${USER}
    Saisir password    ${MDP}
    Cliquer sur login
    Verifier la page d'accueil
    [Teardown]    Close Browser

Login with invalid credentials
    [Documentation]    login avec valid cred
    [Tags]    login    smoke
    Open Browser    https://www.saucedemo.com/    firefox
    Saisir user-name    ${USER}
    Input Password    id:password    bhbhbuiknjpllj
    Cliquer sur login
    Verifier le message d'erreur
     [Teardown]    Close Browser
excute avant chaque test
    Log To Console    Hello there avant chaque test
    Open Browser    https://www.saucedemo.com/    firefox    remote_url=http://192.168.1.55:4444/wd/hub
    Close All Browsers
    
