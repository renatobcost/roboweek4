## 🤖 RoboWeek 4 🤖

Projeto de estudo sobre [Robot Framework](https://robotframework.org). O material disponível neste repositório foi desenvolvido durante a [RoboWeek 4](https://www.youtube.com/playlist?list=PLn2i8I7W73io9FZczXCAHzdExPJXI7ZvI), evento promovido pela [QAcademy](https://app.weareqacademy.com).

O objetivo deste projeto é compreender o funcionamento do Robot Framework aplicado a um caso real. Para tanto, foi utilizado o [ParodiFy](https://parodify.herokuapp.com/users/sign_in) como objeto de testes. 

Os testes criados analisaram o comportamente do parodify ao fazer login (login válido, com email inválido e com senha inválida) e ao reproduzir uma música (selecionar categoria -> cantor -> música -> play).

O projeto possui padronização híbrida entre PageObject e AppActions, aproveitando o melhor os dois padrões. Entretanto,também é possível executá-lo seguindo o padrão App Actions puro. Para mais detalhes sobre os padrões e modo de execução consultar a seção features.


### 💡 Conceitos abordados
-----------------------
- Keywords;
- Padrão App Actions;
- Ganchos;
- Registro de logs;


### ⚠️ Instalação
-----------------------
- Instale o [Node.js](https://nodejs.org/en/download/);
- Instale o [Python](https://www.python.org);
- Abra o diretório do projeto e execute os comandos:
  - `pip install robotframework`
	- `pip install robotframework-browser`
	- `rfbrowser init` (em caso de erro: `python -m Browser.entry init`)

   
### 🖥️ Execução
-----------------------
- Abra o diretório do projeto e execute o comando:
    - `robot -d ./logs test\nome_do_arquivo.robot` (OBS: lembrar de substituir o nome do arquivo para execução) 
	
	
### ⚙️ Arquitetura do projeto
-----------------------

```
roboweek4/
  ├─  logs/
  │        ├── log.html
  │        ├── output.xml      
  │        └── report.html
  │
  ├── resources/
  │        ├── actions/
  │        │          ├── auth.robot
  │        │          ├── nav.robot
  │        │          └── song.robot
  │        ├── page/
  │        │       ├── album.robot
  │        │       ├── category.robot
  │        │       ├── home.robot
  │        │       ├── login.robot
  │        │       └── search.robot
  │        └── base.robot
  │
  ├── tests/
  │        ├── login.robot
  │        └── player.robot
  │
  └── README.md
```


## 🔍 Camadas do projeto
---------------------------------------

 - **logs:** arquivos de logs dos testes realizados (html, xml);
 - **resources:** "recursos utilizados";
  -**actions** arquivos que contém as funções dos testes como, por exemplo: ações de navegação;
  - **page:** arquivos que contém as páginas com funcionalidades dos testes como por exemplo: ações da página de login;
  - **base.robot:** arquivo base do projeto;
 - **tests:** arquivos de testes separados em serviços (login e player);


### 💡 Features
-----------------------

<details><summary><i>PageObject X App Actions</i></summary>

A escolha entre um padrão depende do gosto da pessoa, ou questões do trabalho. Vale ressaltar alguns pontos antes de decidir qual padrão adotar:

- No modelo PageObject ocorre a representação de funcionalidades por páginas;
- Em sistemas mais robustos, com mais serviços, o padrão PageObject é mais indicado;
- No modelo App Actions ocorre a representação por funcionalidades, ou grupos de funcionalidades;
- Em sistemas de menor porte, com poucos serviços, o padrão App Actions é mais indicado. Este padrão é mais simples e fácil de ser mantido, mas não se adequa a softwares grandes. 

Neste projeto foi implementado um modelo híbrido entre os padrões. Assim, ocorrre uma representação de acordo com as funções que uma página tem. Por exemplo, no arquivo login.robot temos o foco na página de login e foram mapeadas algumas ações que podem ser realizadas nessa página. 

</details>

<details><summary><i>Execução híbrida: Page Object + App Actions</i></summary>

Para executar o projeto seguindo o modelo híbrido faça a seguinte edição no arquivo base.robot (pasta resources):

- Deixe comentada a seção "Execução App Actions pura", ou apague-a e deixe apenas a seção "Execução híbrida: PageObject + App Actions" disponível para execução, conforme o exemplo abaixo.

```js

# Execução híbrida: PageObject + App Actions
Resource        page/album.robot
Resource        page/category.robot
Resource        page/home_logada.robot
Resource        page/login.robot
Resource        page/search.robot

```

</details>

<details><summary><i>Execução App Actions puro</i></summary>

Para executar o projeto seguindo o modelo híbrido faça a seguinte edição no arquivo base.robot (pasta resources):

- Deixe comentada a seção "Execução híbrida: PageObject + App Actions", ou apague-a e deixe apenas a seção "Execução App Actions pura" disponível para execução, conforme o exemplo abaixo.

```js

# Execução App Actions pura
#Resource        actions/auth.robot
#Resource        actions/nav.robot
#Resource        actions/song.robot

```

</details>