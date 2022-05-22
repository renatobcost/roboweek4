
*Settings*

Documentation       Ações de autenticação/autorização 

*Variables*

${LOGOUT_LINK}      css=a[href$=sign_out]

*Keywords*

Open Login
    
    #Execução no modo interativo
    #Open Browser   http://parodify.herokuapp.com/users/sign_in     chromium
    
    #Execução no modo headless
    New Page        http://parodify.herokuapp.com/users/sign_in    

Login With
    
    [Arguments]     ${email_arg}                ${pass_arg}

    Fill Text       css=#user_email             ${email_arg}
    Fill text       css=#user_password          ${pass_arg}
    Click           css=input[value='Log in']

Alert Should Be
    
    Get Text        css=.is-danger .message-body        equal       Oops! Email e/ou senha incorretos.

Logout Icon Should Be Visible 

    Wait For Elements State         ${LOGOUT_LINK}      visible     10

Do Logout

    Click                           ${LOGOUT_LINK}

