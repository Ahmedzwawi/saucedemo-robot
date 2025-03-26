*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables  ../data/login_data.py
Library    ./set_chrome_options.py    # Charger le fichier Python pour récupérer les options
Resource    ../pages/resource.resource

*** Variables ***
${BROWSER_OPTIONS}    get_chrome_options()  # Appeler la fonction pour récupérer les options

*** Test Cases ***
Login with valid credentials
    [Documentation]    login avec valid cred
    [Tags]    login    smoke
    Open Browser    https://www.saucedemo.com/    Chrome    
    Saisir user-name    ${USER}
    Saisir password    ${MDP}
    Cliquer sur login
    Verifier la page d'accueil
    [Teardown]    Close Browser

Login with invalid credentials
    [Documentation]    login avec valid cred
    [Tags]    login    smoke
    Open Browser    https://www.saucedemo.com/    Firefox
    Saisir user-name    ${USER}
    Input Password    id:password    bhbhbuiknjpllj
    Cliquer sur login
    Verifier le message d'erreur
    [Teardown]    Close Browser
excute avant chaque test
    Log To Console    Hello there avant chaque test
    Open Browser    https://www.saucedemo.com/    Chrome    options=${BROWSER_OPTIONS}    remote_url=http://192.168.1.55:4444/wd/hub
    Close All Browsers