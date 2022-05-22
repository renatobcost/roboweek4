*Settings*

Documentation   Arquivo que implementa a estrutura inicial do projeto

Library         Browser

# Execução App Actions pura
#Resource        actions/auth.robot
#Resource        actions/nav.robot
#Resource        actions/song.robot

# Execução híbrida: PageObject + App Actions
Resource        page/album.robot
Resource        page/category.robot
Resource        page/home_logada.robot
Resource        page/login.robot
Resource        page/search.robot





