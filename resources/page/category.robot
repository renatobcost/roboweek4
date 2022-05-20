
*Settings*

Documentation       Ações da página de categorias  

*Keywords*


Go To Artist

    # na aula foi elaborado este seletor, mas acabou n sendo reconhecido na minha máquina
    #[Arguments]                         $(artist_name)
    #Click                               xpath=//p[contains(text(), "$(artist_name)")]/..   
    
    Click                               css=a[href="/albums/5"]
    Wait For Elements State             xpath=//h2[contains(text(), "Músicas")]         visible         10