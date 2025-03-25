*** Settings ***
Library     SeleniumLibrary
Library     DataDriver  ../data/data.csv     dialect=excel    encoding=utf-8
Resource   ../templates/login_template.resource
Test Template    afficher les donnees csv
Test Setup    excute avant chaque test
Test Teardown    Close Browser

*** Test Cases ***
# Doing Test Credentials Correct for ${username} and ${password}  Default    UserData

## laiser deux espace entre les keywords,et entre les valeurs
afficher les donnees csv  ${username}  ${password}

*** Keywords ***
afficher les donnees csv
    [Arguments]    ${username}    ${password}
    Log To Console    ${username} and ${password}
    RETURN    ${username}    ${password}
excute avant chaque test
    Log To Console    Hello there avant chaque test
    Open Browser    https://www.saucedemo.com/    firefox    remote_url=http://localhost:4444/wd/hub
    Close All Browsers
    
