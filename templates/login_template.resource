*** Settings ***
Library     OperatingSystem
Resource   ../pages/resource.resource 

*** Keywords ***
Login avec username et password
    [Arguments]    ${username}    ${password}     
    resource.Saisir user-name    ${username}
    resource.Saisir password    ${password}
    resource.Cliquer sur login
    resource.Verifier la page d'accueil
  