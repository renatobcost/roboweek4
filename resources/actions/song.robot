
*Settings*

Documentation       Ações de tocar uma música no parodify

*Keywords*

Play Song

    # na aula foi elaborado este seletor, mas acabou n sendo reconhecido na minha máquina
    #[Arguments]     $(song_name)
    #Click           xpath=//p[contains(text(), "$(song_name)")]/../..//div[contains(@class, "play")]//a

    Click           xpath=/html/body/section/div[2]/div[2]/div/div[1]/a

Song Should Be Playing

    # na aula foi elaborado este seletor, mas acabou n sendo reconhecido na minha máquina
    #[Arguments]     $(song_name)
    #Get Style       xpath=//p[contains(text(), "$(song_name)")]/../../..        color    equal   rgb(225, 0, 180)       
    Get Style       xpath=/html/body/section/div[2]/div[2]/div        color    equal   rgb(225, 0, 180)   