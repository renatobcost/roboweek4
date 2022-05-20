
*Settings*

Documentation       Ações da página de login   

*Keywords*

Open Login
    #Open Browser   http://parodify.herokuapp.com/users/sign_in     chromium
    New Page        http://parodify.herokuapp.com/users/sign_in   

Login With
    
    [Arguments]     ${email_arg}                ${pass_arg}

    Fill Text       css=#user_email             ${email_arg}
    Fill text       css=#user_password          ${pass_arg}
    Click           css=input[value='Log in']

Alert Should Be
    
    Get Text        css=.is-danger .message-body        equal       Oops! Email e/ou senha incorretos.