*Settings*

Documentation   Testes da página de login

Resource        ../resources/base.robot

Test Teardown   Take Screenshot


*Test Cases*

Login com sucesso
    
    Open Login
    Get Text                        label[for=user_email]       contains        Email  
    Login With                      testeapp@teste.com          teste123
    Logout Icon Should Be Visible 
    

Senha incorreta
    
    Open Login  
    Login With                      testeapp@teste.com          teste321
    Alert Should Be

Email incorreto
    
    Open Login
    Login With                      teste@teste.com             teste321
    Alert Should Be
    

