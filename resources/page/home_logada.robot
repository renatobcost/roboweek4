
*Settings*

Documentation       Ações da página home logada   

*Keywords*

Logout Icon Should Be Visible 

    Wait For Elements State         css=a[href$=sign_out]       visible         10

Go To Search Page
    
    Click                           css=a[href*=search]
    Wait For Elements State         xpath=//h2[contains(text(), "Buscar")]      visible     10