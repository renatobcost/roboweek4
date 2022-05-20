*Settings*

Documentation   Testando o player 

Resource        ../resources/base.robot

Test Teardown   Take Screenshot

*Test Cases*

Reproduzir paródia
    Open Login
    Login With                          testeapp@teste.com          teste123
    Logout Icon Should Be Visible 
    Go To Search Page
    Go To Category
    Go To Artist                        #Marcus e Debug
    Play Song                           #Bug de Manhã
    Song Should Be Playing              #Bug de Manhã

   



