## 🤖 RoboWeek 4 🤖

Projeto de estudo sobre [Robot Framework](https://robotframework.org). O material disponível neste repositório foi desenvolvido durante a [RoboWeek 4](https://www.youtube.com/playlist?list=PLn2i8I7W73io9FZczXCAHzdExPJXI7ZvI), evento promovido pela [QAcademy](https://app.weareqacademy.com).

O objetivo deste projeto é compreender o funcionamento do Robot Framework aplicado a um caso real. Para tanto, foi utilizado o [ParodiFy](https://parodify.herokuapp.com/users/sign_in) como objeto de testes. 

Os testes criados analisaram o comportamente do parodify ao fazer login (login válido, com email inválido e com senha inválida) e ao reproduzir uma música (selecionar categoria -> cantor -> música -> play).


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
roboweek5/
  ├─  logs/
  │        ├── log.html
  │        ├── output.xml      
  │        └── report.html
  │
  ├── resources/
  │        ├── page/
  │        │       └── album.robot
  │        │       └── category.robot
  │        │       └── home.robot
  │        │       └── login.robot
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
  - **page:** arquivos que contém as funções/funcionalidades dos testes como, por exemplo: ações da página de login;
  - **base.robot** arquivo base do projeto;
 - **tests:** arquivos de testes separados em serviços (login e player);
