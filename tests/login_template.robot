*** Settings ***
Library     OperatingSystem
Resource   ../pages/resource.resource 
Resource    ../templates/login_template.resource
Test Template     Login avec username et password  
Test Setup        Open Browser    ${URL}    Chrome

*** Test Cases ***                        Username    Password    
Login avec username et password    ${USER}    ${MDP}    
Login avec username et password    problem_user     secret_sauce    





# Login avec username et incorrect password
#     [Arguments]    ${username}    ${password}     ${r_attendu}
#     Set Browser Implicit Wait    2
#     resource.Saisir user-name    ${username}
#     resource.Saisir password    incorrectmdp
#     resource.Cliquer sur login
#     resource.Verifier le message d'erreur
  