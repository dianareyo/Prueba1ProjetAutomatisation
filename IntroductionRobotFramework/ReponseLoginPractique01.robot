*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
loginTest
 [Documentation]    ceci est un test de login/logout
  Open Browser   https://opensource-demo.orangehrmlive.com/index.php/auth/login
  Maximizer Browser Window
  Input Text         id=txtUserName    Admin
  Input Password     id=
  
  