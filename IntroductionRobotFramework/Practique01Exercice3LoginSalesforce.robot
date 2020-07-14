*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***

LoginTestValide
    [Documentation]  Tester le Login 
        
        Open Browser                  ${URL} 
        Set Browser Implicit Wait     5
        Input Text                    id=username    ${LOGINDATA}[0]
        Input Password                id=passWord    ${LOGINDATA}[1]
        Click Button                  id=Login  
        Log    Fin du test LoginTestValide
        
LoginTestUserNameInvalide
    [Documentation]  Tester le Login 
        
        Open Browser                  ${URL} 
        Set Browser Implicit Wait     5
        Input Text                    id=username    ${LOGINDATANonValide}[0]
        Input Password                id=passWord    ${LOGINDATA}[1]
        Click Button                  id=Login  
        Log    Fin du test LoginTestUserNameInvalide
        
LoginTestPasswordInvalide
    [Documentation]  Tester le Login 
        
        Open Browser                  ${URL} 
        Set Browser Implicit Wait     5
        Input Text                    id=username    ${LOGINDATA}[0]
        Input Password                id=passWord    ${LOGINDATANonValide}[1]   
        Click Button                  id=Login  
        Log    Fin du test LoginTestPasswordInvalide
        
LoginTestEntreeInvalides
    [Documentation]  Tester le Login 
        
        Open Browser                  ${URL} 
        Set Browser Implicit Wait     5
        Input Text                    id=username    ${LOGINDATANonValide}[0] 
        Input Password                id=passWord    ${LOGINDATANonValide}[1]   
        Click Button                  id=Login  
        Log    Fin du test LoginTestEntreeInvalides
        
LoginTestChampsVides

        [Documentation]  Tester le Login 
        
        Open Browser                  ${URL} 
        Set Browser Implicit Wait     5
        Input Text                    id=username   ""
        Input Password                id=passWord   ""
        Click Button                  id=Login  
        Log    Fin du test LoginTestChampsVides
        
LoginTestForgotPassword

        [Documentation]  Tester le Login 
        
        Open Browser                  ${URL} 
        Set Browser Implicit Wait     5
        Input Text                    id=username   ""
        Input Password                id=passWord   ""
        Click Button                  id=forgot_password_link  
        Log    Fin du test LoginTestForgotPassword
        
LoginTestRememberMe
    [Documentation]  Tester le Login 
        
        Open Browser                  ${URL} 
        Set Browser Implicit Wait     5
        Input Text                    id=username    ${LOGINDATA}[0]
        Input Password                id=passWord    ${LOGINDATA}[1]
        Select checkbox                id=rememberUn  
        Click Button                  id=Login  
        Log    Fin du test LoginTestRememberMe

 
*** Variables ***      
${URL}                    https://login.salesforce.com/?locale=ca
@{LOGINDATA}              userName=Admin     passWord=admin1234
@{LOGINDATANonValide}     userName="=1?"     passWord="=2?"