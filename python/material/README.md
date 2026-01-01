# Python
![Python](https://user-images.githubusercontent.com/49786548/84605451-b6d36200-ae73-11ea-94b3-9927d07f85fd.png)

# Bibliotecas Python
O site [Pypi Org](https://pypi.org/) contem uma lista de todas as bibliotecas Python disponíveis.

# Instalação de Bibliotecas
A instalação de bibliotecas no **Linux** é feita utilizando o seguinte modelo:
<br> sudo apt install python3-nome-da-biblioteca <br>
- **Exemplo**: sudo apt install python3-boto3

# Lista de comandos em python com exemplos.

## 1 - Formatação de numeros.
<br> Existem diversas formatoções disponíveis em Python, sendo elas as seguintes **INT**, **FLOAT** e **COMPLEX**. <br>
- **INT**: formatação utilizada para numeros **inteiros** ou seja, sem casas decimais.<br>
  exemplo: a = int(1) >> significa que o valor atribuido a variável **a** é o valor do numero inteiro **1**.

- **FLOAT**: Formatação utilizada para numeros **flutuantes** ou seja, **possuem casas decimais**. <br>
  exemplo: a = float(3.5) >> significa que o valor da variável **a** é o valor do numero flutante **3.5**

> [!NOTE]
> É importante citar que em Python a escrita do valor nos exemplos acima já seriam reconhecidos como int ou float. Mas o seu uso não se limita apenas aos exemplo citados acima, esse processo pode ser utilizado para controlar o tipo de resultado que deseja que seja retornado ao executar uma operação matemática.

<br> **Aplicação em outros cálculos** <br>  

Por exemplo se realizar o calculo de divisão 5 por 2 e atribuindo a uma variável uma como tipo **INT** e outra **FLOAT**: 
<br> a = int(5/2) >> O resultado obtido no calculo será **2**. Por que a variável **a** tem a caracteristica de ser um dado **INTEIRO**.
<br> b = float(5/2) >> O resultado obtido no calculo será **2.5**. Por que a variável **b** tem a caracteristica de ser um dado **FLUTUANTE**. <br>

## 2 - Comandos para realizar a inserção de variável 
Ao utilizarmos o comando **PRINT** para visualizar as informações que retornam em um código é possível realizar a inserção da informação de 3 formas. <br>
### Exemplo 1: Utilizando virgulas
print('Olá mundo! Meu nome é', **nome da variável**) <br>

### Exemplo 2: Utilizando o comando F
print(f'Olá mundo! Meu nome é **{nome da variável}**') <br>

### Exemplo 3: Utilizando o comando FORMAT
print('Olá mundo! Meu nome é {}, tenho {} anos.'.format(**nome da primeira variável**,**nome da segunda variável**))<br>

## 3 - Personalização da cores no terminal

Ao executar um código Python é possível realizar a personalização da cor do texto e do plano de fundo, tanto no terminal, quanto em aplicações. <br>

### 3.1 Personalizando as cores das letras no terminal:
Existem uma série de códigos que permitem a alteração de cores das letras no terminal, seguindo exatamente a estrutura apresentada a seguir. <br>
- Modelo de uso do comando: **\033[m**
<br>  - Exemplo: print('\033[31m O texto exibido estará na cor vermelha')

### 3.2 Link de acessoa lista de cores em Python
Link de acesso a lista de cores disponíveis para personalização do terminal utilizando a linguagem Python.
<br>  [Cores no terminal Python](https://wiki.python.org.br/CoresNoTerminal)

## 4 - Comando INPUT

O comando **INPUT** é utilizado quando se espera a entrada de informações por parte do usuário. 
<br> O **INPUT** é composto por uma variável, seu  **TIPO** e posteriormente a pergunta que será realizada ao usuário para a coleta do dado, conforme estrutura a seguir: <br> 
- variavel = tipo(**INPUT**('Pergunta realizada ao usuário: ')) <br>
<br> - Exemplo 1: nome = str(input('Qual o seu nome? ')) 
<br> - Exemplo 2: idade = int(input('Qual a sua idade? '))

## 5 - Formas de posicionar dados no Print
O comand **print** é responsável por imprimir informações no terminal, para isso a adição de dados pode ser realizada de várias formas as quais serão exemplificadas a seguir: <br>
### 5.1 - Usando virgulas
 Esta é a forma convencional de adicionar informações em uma exibição de print, sendo composta pela seguinte estrutura. <br>
 - print('Mensagem impressa', nome da váriável)
<br> - Exemplo 1: print('O meu nome é', nome)
<br> - Exemplo 2: print('Eu tenho', idade ,'anos'.)

### 5.2 - Usando {}
Esta forma de inserir o valor da variável utilizando o simbolo de **{}** durante a utilização do comando **PRINT**, possui a seguinte estrutura. <br> 
- print('Mensagem impressa {nome da variável}')
<br> - Exemplo 1: print('O meu nome é {nome}')
<br> - Exemplo 2: print('Eu tenho {idade} anos')

### 5.3 - Usando o comando format
Esta forma de inserção do valor da variável, possui uma particularidade diferente das outras, porque ele possui uma ordenação a ser respeitada para funcionar corretamente. Por tanto ao utilizar o **FORMAT** para realizar o input da variável é importante levar em consideração a seguinte estutura.
- print('Assunto 1 {}, assunto 2 {}, assunto 3{}'.format(variavel1,variavel2,variavel3))
<br> - print('Eu me chamo {}, tenho {} anos. Moro em {}'.format(Lucas,20,Sp)
<br> - print('Eu tenho um {}, um {} e um {]'.format(cachorro,gato,peixe))

# Aplicações em Python

O Python assim, como diversas linguagens de programção possui uma série de módulos que atuam em diferentes áreas. O módulo utilizado para a geração de aplicações é o módulo Tkinter, por isso ao realizar a criação de uma aplicação em Python será necessário realizar a sua importação.
## 1 - Formato do arquivo Python, diferenças entre **.py** e **.pyw**
Quando abordamos o tema apicações em Python é preciso ter atenção incialmente que existem dois tipos de extensões de arquivos Python, sendo elas .py e .pyw. A principal diferença entre ambas é que a .py **é voltada a execução do código junto a IDE(VS Code) entre outras, ou seja, demonstra o código desenvolvido e é voltada na maioria dos casos ao processo de desenvovimento e manutenção. Porém ao falarmos de aplicações em Python, existe uma opção de extensão chamada .pyw, no qual basicamente é executada a aplicação desenvolvida em linguagem Python, com isso não abrindo a IDE e nem exibindo o código utilizada para desenvolvimento, sendo voltada ao ponto de utilização do usuário.

## 2 - Importação do módulo Tkinter
- Modelo de importação do módulo Tkinter:
<br> import Tkinter
>[!NOTE]
>Normalmente ao realizar a importação de um módulo é realizada a adição de um "nickname" para se referir a esse módulo, essa pratica facilita bastante o processo de desenvolvimento, tornando-o mais ágil.
>Ao utilizarmos o Tkinter, normalmente adicionamos o nickname tk.

- Modelo de atribuição de Nickname/Alias ao módulo Tkinter:
<br> import tkinter as tk
## 3 - Importação do módulo temático TTK
O módulo Tkinter da atual versão do Python(versão 3.12.3), conta com dois modelos temáticos. O primeiro sendo o TK e o segundo o TTK(mais recente).
- Modelo temático TK: Modelo temático antigo do Python criado em 1994, possuindo um visual mais baseado em temas com visual retro.
- Modelo temático TTK: Modelo temático com aspectos visuais um pouco mais atualizado, tendo a sua criação em 2007.

<br> Para a utilização do modelo temático **TTK** de 2007 é preciso realizar a sua importação. Esse processo pode ser feito da seguinte forma:
- Modelo de importação do modelo temático TTK:
<br> import tkinter
<br>  from tkinter import ttk
 
## 4 - Configuraçoes básicas da janela da aplicação
Toda janela de aplicação Python, pode ser configurada em relação a sua altura, estado inicial, permissões, ordenação e icones. Todas essas informações estarão contidas nesse bloco, dividindo em passo a passo de cada etapa.
<br> Toda janela de aplicação em Python vai possuir a estrutura titulo e o loop de execução da aplicação, que fica posicionado no fim do código. Sendo elas as duas demonstradas abaixo:
- Modelo de titulo de aplicação:
<br> Este bloco possui o nome da pagina atual da aplicação, neste caso a página incial.
<br> - NomeDaPaginaMainDaAplicação.title('Texto inserido como titulo')
<br>  - Exemplo: root.title('Página Inicial')

- Modelo de mainloop()
<br> Este bloco possui o main loop, metodo utilizado para que a aplicação fique funcionando, sem a criação desse metodo a aplicação é executada e encerrada ao termino da execução automaticamente.
<br> - NomeDaPaginaMainDaAplicação.mainloop()
<br>  - Exemplo: root.mainloop()

### 4.1. Definindo as dimensões de uma janela de aplicação.
Toda a janela de aplicação tem dois parametros para definir a sua medida, sendo elas a largura(width) e altura(height). Por padrão as medidas são em Pixels, podendo ser criada da seguinte forma:
 - Largura da janela da aplicação: 
<br> - wind_width = MedidaDesejadaLargura
 - Altura da janela da aplicação:
<br> - wind_height = MedidaDesejadaAltura

### 4.2. Definindo as dimensões da tela.
Para que ocorra o dimensionamento adequado da resolução de uma tela, basta utilizar os metodos do Tkinter **winfo_screenwdith()** e **winfo_screenheight()**. Esses metodos retornam as dimensões de tela do computador, garantindo a normalização do funcionamento das aplicações em diversas resoluções de tela.
> [!NOTE]
> Para utilizações futuras, irei realizar a atribuição das proporções de tela encontrados a variáveis por que apenas dessa forma se torna possível a sua utilização adequada na configuração da janela da aplicação Python
- Largura de resolução de tela:
<br> - screen_x = NomeDaPaginaMainDaAplicação.winfo_screenwidth()
<br>  - Exemplo: screen_x = root.winfo_screenwidth()
- Altura da resolução da tela:
<br> - screen_y= NomeDaPaginaMainDaAplicação.winfo_screenheight()
<br>  - Exemplo: screen_y = root.winfo_screenheight()

### 4.3. Definindo o centro da aplicaçãonos eixos x e y
Para a definição adequada e obtenção de valores manipuláeis é necessário que ocorra a conversão dos valores obtidos para o formato **INT** e que esses valores sejam atriuidos a variáveis. Por isso o calculo aplicado para a largura e altura será a **resolução da tela divido por 2 - as dimensões da aplicação divida por 2**. Com isso obtemos a seguinte expressão.
- Centralizando a aplicação na horizontal.
<br> - center_x = int(LarguraDaTela/2 - LarguraDaAplicação/2)
<br>  - Exemplo: center_x  = int(screen_x/2 - wind_width/2)

- Centralizando a aplicação na vertical.
<br> - center_y = int(AlturaDaTela/2 - AlturaDaAplicação/2)
<br>  - Exemplo: center_y = int(screen_y/2 - wind_height/2)

### 4.4. Geometria final da aplicação
Após a obtenção de todas as informações de posicionamento e medidas da aplicação e tela, podemos utilizar o metodo **geometry** para que de fato sejam aplicadas as informações calculadas.
- Modelo de uso do metodo **geometry**:
<br> - NomeDaPaginaMainDaAplicação.geometry = f'{LarguraDaJanelaDaAplicação}x{AlturaDaJanelaDaAplicação}+{PosiçãoCentralNoEixoHorizontal}+{PosicaoCentralNoEixoVertical}'
<br>  - Exemplo: root.geometry = f'{wind_width}x{wind_height}+{center_x}+{center_y}'

### 4.5. Atribuição um Icone a aplicação
Para realizar a atribuição de um icone a uma aplicação é necessário a utilização do metodo **iconbitmap**. Lembrando que a imagem a ser utilizada precisa obrigatóriamente estar nessa formatação **.ICO**
- Modelo de utilização do metodo **iconbitmap**
<br> - NomeDaPaginaMainDaAplicação.iconbitmap(Caminho do arquivo)
<br>  - Exemplo: root.iconbitmap('C:\\Users\\...)

### 4.6. Configurações ao inicializar a aplicação e restrições.
Além das configurações de tela de aplicação, é possível também configurar o comportamento da aplicação tanto ao incializar, quanto durante o seu funcionamento, sendo possível até mesmo ordenar telas de acordo com o objetivo do projeto.
- Estado ao iniciar a aplicação com o metodo **state**.
<br> Ao inciarmos uma aplicação em Python é possível definir o comportamento da janela da aplicação. As opções estarão listadas a seguir após a apresentação do metodo.
#### 4.6.1. Modelo de utilização do metodo State:
- NomeDaPaginaMainDaAplicação.state('Comportamento da tela ao iniciar')
<br>  - Exemplo: root.state('normal')
>[!NOTE]
> Desta forma ao inciar a aplicação a mesma manterá as informações de dimensionamento configuradas por padrão.
> O mesmo se aplica as outras variações. Sendo elas 'zoomed' = tela cheia, 'iconic' = minimizada e 'normal' = medida padrão

#### 4.6.2. Modelo de utilização do metodo Resizeble:
Este metodo permite o redimensionamento da janela da aplicação, sendo baseado em valores booleanos ou seja **True** ou **False** ou numericamente(1,0). Desta forma é possível restringir o redimensionamento da janela da aplicação, lembrando que por padrão essa é uma opção que já vem disponibilizada, permitindo o redimensionamento.
- Modelo de uso do meotodo **resizeble**:
<br> - NomeDaPaginaMainDaAplicação.resizeble(True,true) -> Desta forma está habilitada a edição das dimensões da janela da aplicação.
<br>  - Exemplo: root.resizeble(0,0) -> Desta forma está bloqueada o redimensionamento da janela da aplicação.
   
## 5 - Construtor de widgets em aplicações
Widgets são componentes podem ser utilizados dentro de aplicações, alguns exemplos de **widget** disponíveis são botões, caixas de texto, checkbox, etc. Alguns widgets podem ser criados utilizando metodos diretos e possuem argumentos próprios. Esses widgets são atribuidos a variáveis para que depois possam ser exibidos na aplicação.
<br> É importante citar que todo o construtor para ser exibido no código precisa da presença de um .pack() , esse comando garante o retorno do objeto contruido para a aplicação.
- Modelo de utilização do **.pack**
<br> - ObjetoConstruido.pack()
<br>  - Exemplo: btn.pack() ; textbox.pack(); etc...

### 5.1. Modelo de Construtor de botões .Button
<br> - btn = ttk.Button(NomeDaPaginaMainDaAplicação,text = 'Mensagem exibida no botão') -> lembrando que essa é a estrutura básica, mas podem ser utilizadas imagens e outros conteúdos também.
<br>  - Exemplo: btn = ttk.Button(root,text = 'Pressione')
 
### 5.2. Modelo de Construtor de caixa de texto .Entry
<br> - textbox = ttk.Entry(NomeDaPaginaMainDaAplicação,text = 'Insira o texto aqui')
<br>  - Exemplo: textbox = ttk.Entry(root,text = 'Insira o texto')

### 5.3. Modelo de Construtor de checkbox .Checkbutton
<br> - checkbox = ttk.Checkbutton(NomeDaPaginaMainDaAplicação,text='Mensagem exibida no checkbox')
<br>   - Exemplo: checkbox = ttk.Checkbutton(root,text = 'Confirma a leitura das regras da comunidade')

## 6. Analise de dados


