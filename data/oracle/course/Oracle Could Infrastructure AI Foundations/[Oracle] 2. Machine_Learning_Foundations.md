# Machine Learning Foundations
Neste bloco estão contidas as informações do modulo de aprendizado sobre **Machine Learning**, apresentado por Himanshu Raj, instrutor de AI/ML, CSS e Cloud Delivery na Oracle.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/fef17eea-14cf-45d8-835e-ff28c026efcd" />

# Sumário
Os temas a serem abordados nesse módulo serão os listados a seguir:
1. Explicação sobre os diferentes conceitos de **Machine Learning**.
2. Explicação de como funciona o **aprendizado supervisionado**.
3. Abordagem sobre o aprendizado supervisionado, mais especificamente os conceitos de **regressão linear e regressão logística**.
4. Explicação sobre **aprendizado não supervisionado**.
5. Aprendizado por reforço.

# 1. Machine Learning
Nesta sessão estão contidas as anotações de conceitos importantes de **Machine Learning**.

## 1.1. Introdução
***Machine Learning(ML)*** é um subconjunto da **inteligencia artificial** que está focado em criar sistemas que conseguem realizar o processo de aprendizado utilizando como base de informação a experiência. Nesse subconjunto o aprendizado é feito sem a necessidade de definir explicitamente as suas definições, tendo como principal base construtiva a incorporação de algoritmos que aumente a capacidade de **auto aprendizado** da maquina.
As principais aplicações de recursos de machine learning envolvem aprendizado e previsibilidade de resultados baseando se em um conjunto de exemplos fornecidos como dados.

### Exemplo
Os principais exemplos de funcionamento de funcionalidades que utilizam **Machine Learning** são utilizados diáriamente em diversos serviços utilizados diáriamente, sendo os mais comuns, por exemplo:

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/ae8dba68-3d7f-41f3-b47b-21290ff148b2" />

Isso demonstra uma das principais caracteristicas desse subconjunto, o aprendizado constante com base nos dados do usuário. Essa caracteristicas permite que sejam fornecidas soluções cada vez mais customizaveis que atendam especificamente ao usuário.

## 1.2. Conceitos

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/f2838b72-d2a1-4ff2-a62f-cc2ba028f96b" />

O conceito de **machine learning** requer  que sejam inseridos as definições do que é cada item, sendo chamado de **input features**, que basicamente definem as caracteristicas do que é cada objeto ou regra de negócio, além do **output label** que atribuem a esse conjunto de definições o resultado esperado.

Após a criação desse conjunto de definições o algoritmo irá executar a verificação de todos os outros conjuntos de dados e se "adaptando" para realizar a classificação de cada objeto ou assumir um comportamento de acordo com o dado que lhe for inserido. Baseando se nas definições inseridas e no histórico treinamento obtido ao longo da execução do algoritmo, gerando assim um ***modelo de machine learning treinado***.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/52a79952-3765-4d9f-86e3-89873e110acc" />

## 1.3. Tipos de Machine Learning

### 1.3.1. Supervisionado
O modelo de **Machine Learning Supervisionado**, os dados são rotulados para realizar o treinamento do algoritmo. Desta forma é realizada a definição dos dados no momento do **input** das informações e a tomada de decisão possui essa referencia.

### 1.3.2. Não supervisionado
O modelo de **Machine Learning Não Supervisionado**, os dados inseridos  **não são rotulados, nem definidos**, desta forma o algoritmo realiza o trabalho de classificar e agrupar os dados com base nas caracteristicas observada, assim como o processo de tomada de decisão.

### 1.3.3. Tentativa e Erro
O modelo de **Machine Learning por Reforço**, o aprendizado é realizado com base nos resultados obtidos, requerindo "feedback" constante que determine se o resultado foi correto ou não;

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/d2803fbb-806e-49ec-851d-01fa1e2bfbe6" />

### Exemplo
Alguns exemplos de aplicabilidade de cada tipo de **Machine Learning**, que de forma "simplista" aponta que cada modelo tem um cenário específico de uso, sendo:

#### Supervisionado
No cenário de uso de machine learning supervisionnado, já existe um resultado definido e esperado.

#### Não supervisionado
No modelo de machine learning não supervisionado, o resultado normalmente envolve identificar anomalias em comportamentos e identificação desses resultado.

#### Reforço
No modelo de machine learning por reforço, o objetivo principal é realizar a calibração de um processo ou equipamento, no qual a qualidade é atrelada ao feedback do usuário.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/6d9aba36-5d59-4de9-b655-8fa7cfbe1e3d" />

---

# 2. Machine Learning - Aprendizado Supervisionado
O **aprendizado de maquina supervisionado**, é o processo de aprendizado utilizando dados rotulados, contendo o contexto dos dados.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/765830c5-ca3c-4f9a-a54c-ce70848dbab3" />

## 2.1 Conceitos 
As principais funcionalidades do Machine Learning Supervisionado, são:
- Preditividades.
- Identificação de sentimentos.
- Realização de diagnósticos.

## 2.2. Aprendizado Supervisionado
O treinamento supervisionado o mapeamento entre a entrada e a saída é um conceito fundamental, que ensina ao modelo a relação entre os dados de entrada e saída. Determinando a correspondencia entre os dados inseridos e os resultados.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/9ce4ea43-a75b-4493-ba99-ed3ac5b8c5f3" />

### 2.2.1. Tipos de aprendizado supervisionado

#### Regressão
O treinamento **utilizando a regressão** é adotado quando a entrada e a saída de dados é contínua, ou seja, os dados de entrada são contínuos, de mesmo "valor" e "tipagem" e os resultados de saída são os mesmos.

#### Categorica
O treinamento **utilizando classificação** é utilizada quando os dados de entrada são variáveis, ou seja o algoritmo tem objetivo de classificar e identificar padrões de dados e posteriormente classifica-los.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/c221fb5a-367b-4d79-83fa-f2d75b5eb19a" />


### Exemplo
Os dados podem ser do tipo **independente** ou **dependente**, de acordo com a influencia sob o resultado, sendo o parametro deterministico para o resultado gerado pelo modelo. O exemplo a seguir demonstra isso.
No qual a tabela de preços de casas é usada como base de referencia para treinamento de um modelo, apresentando as dimensões da casa como dado **independente** e valor do imóvel como dado **dependente**, visto que o objetivo neste exemplo é prever o preço dos imóveis ao longo do tempo, logo o preço se torna um fator mais importante para o resultado do que a metragem.

O cenário oposto seria se fosse um modelo para avaliar os impostos cobrados sob o imóvel, já que neste caso o imposto incide diretamente sobre a metragem do imóvel.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/24cfccc9-4217-4955-8404-e8bf52829f47" />

O modelo oferece também uma visão gráfica demonstrando como é realizada a organização dos dados, independentes e dependentes, permitindo a projeção de uma linha que serve como referencia ao algoritimo. Isso demonstra o viés que será adotado como métrica para o algoritimo gerar a predição.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/f45b01e6-52d3-44c3-b8f1-bc00f2bebdf6" />


Essa visão gráfica é responsável também por definir a função que será utilizada pelo algoritmo, sendo ajustada com a adição de mais pontos e execuções. A imagem demonstra que é feito o calculo da área para definir o angulo da projeção a ser usada pelo algoritimo.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/70f84c3f-6ca3-41c7-bdbe-642444b24c75" />

### Minimizando as perdas

O erro é justamente a diferença entre o **resultado real e o resultado previsto**, indicando que o modelo deverá ser treinado a ponto de reduzir a incidencia desse tipo de ocorrencia, aumentando da qualidade do modelo e a acurácia do da previsão.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/324f080d-ec66-4af1-9c73-5708d3ba20b6" />

Desta forma o calculo da diferença dos resultados permite o ajuste dos pesos atribuidos aos parametros, chegando ao peso ideal de cada tipo de dado. Ao adotarmos o modelo treinado, ao receber o input de dados o mesmo deverá ter alta confiabilidade e acurácia.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/bc999231-acb1-4d6b-a97d-fb5dea52c02a" />

---
# 3. Treinamento supervisionado: Classificação

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/d2ee1a27-02b8-4aff-99e0-e0eec3122004" />


## 3.1. Introdução
O modelo de Machine Learning de treino supervisionado utilizando **classificação** é utilizado para classificar os dados inseridos, sendo **binário**, **multiclasse** e **multirrótulo**. é importante menconar que esse modelo pode ser utilizado para diversas regras de negócio, de acordo com a ncessidade do proceso no qual for implantado, utilizando os atributos identificado nos dados.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/0a1537bf-c931-49a0-8f3c-50022f0eaeff" />

## 3.2. Conceito

#### Binário
Os dados são analisados e só possuem dois resultados possíveis, por isso o nome binário.
- Exemplo: Identificação se o email é spam ou não, tendo assim duas respostas possíveis.

### Modelo de classificação supervisionado - Multiclasse
Os dados podem ter multiplas classificações, não sendo limitado apenas a duas opções.
- Exemplo: Identificação de grupos de usuários, podendo possuir multiplos grupos.

#### Modelo de classificação supervisionado - Multirrótulo
Um unico dado pode ter diversas classificações, de acordo com as variáveis envolvidas naquele contexto.
- Exemplo: Numero de tenis, de acordo com o usuário pode ser considerado um numero pequeno, ideal ou grande.

---
# 4. Anaconda
O **Anaconda** é uma plataforma de desenvolvimento de soluções de IA e Machine Learning, tendo como principal diferencial o isolamento de ambientes, possibilitando a utilização de uma série de recursos que são dedicados ao desenvolvimento. Sendo um recurso open source de criação de soluções, para mais detalhes a respeito da plataforma basta acessar o [link](https://anaconda.com/app/).

## 4.1. Jupyter
O **Jupyter** é o recurso de notebooks disponibilizado no ambiente, sendo neste caso o local onde é possível realizar o desenvolvimento de soluções de IA e Machine Learning, porém é preciso ter atenção a alguns detalhes fundamentais antes de iniciar o desenvolvimento.

### 4.1.1. Introdução
O **Jupyter** é o ambiente isolado no qual é possível realizar a instalação de bibliotecas e realização de estudos de IA, sendo assim um recurso poderoso para a criação de scripts. Por isso que de modo geral é importante entender que todo o desenvolvimento de recursos de IA por boas praticas precisa seguir os seguintes processos:
1. Importação dos dados para o ambiente.
2. Instalação das bibliotecas necessárias, como por exemplo pandas, sklearn e outras classes como LogisticRegression
3. Treinamento do modelo com as regras de negócio (isso se aplica apenas em modelos supervisionados)
4. Avaliação de resultados.
5. Inicio do desenvolvimento de predições.

### Exemplo
O passo a passo seguir serve de exemplo simples de desenvolvimento de um algoritmo de **machine learning, supervisionado de classificação**.

1. Importação da biblioteca Pandas, biblioteca de manipulação de arquivos e dados.
  import pandas as pd

2. Importação da biblioteca sklearn, biblioteca de machine learn
   import sklearn
   
3. Instalação da classe LogisticRegression, utilizada para desenvolvimento de modelos de machine learning do tipo supervisionado e de classificação.
  from sklearn.linear_model -- indica que o modelo de machine learn é do tipo linear
  from sklearn.linear model import LogisticRegression -- ESSE É O COMANDO COMPLETO PARA SER USADO.

4. Caso as bibliotecas não estejam instaladas no seu terminal no **Jupyter** será necessário instalalas no terminal do ambiente, para isso basta volta a pagina inicial do notebook e abrir o terminal.
   **Todas as bibliotecas disponíveis para instalação no seu ambiente estão disponíveis na documentação do Anaconda, lá estão contidos também os códigos adequados para instalação das bibliotecas no terminal do Jupyter**

---

# 5. Machine Learning Não Supervisionado

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/8bd99692-2d05-470e-8c49-8e5219ee82d2" />

## 5.1. Introdução
Neste modelo de treinamento de Machine Learning o resultado não é definido na criação do modelo, desta forma os dados são ordendos e o resultado gerado é feito de maneira autonoma pelo algoritmo utilizando como base de tomada de deic~soa os próprios dados fornecidos e os diversos contextos que podem ser extraidos deles. O aprendizado do algoritmo acontece com base na similaridade entre os dados fornecidos.

Esse processo de ordenação dos dados com base na similaridade é definido como **clusterização**.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/f6c14dec-9bbe-4204-afca-0c6a0289bcff" />

## Exemplo
Quando analisamos cenários reais da aplicação desse modelo de *machine learning*, é observado que a sua principal aplicabilidade é a identificação de padrões de comportamento. Um exemplo disso é o comportamento de um usuário, caso o cenário observado seja muito divergente o modelo gerará um alerta, evidenciando algum comportamento atípico. Desta forma é possível realizar algumas ações como, agrupamento de informações por **"inputs"** , **"outliers"** ou **"sistemas de recomendação"**:
- **Inputs**: Neste cenário os usuários são agrupados pelos mesmos comportamentos de busca, possibilitando a oferta de soluções voltadas a aquele publico.
- **Outliers**: Identificar fraudes, visto que a ação já foi realizada, reduzindo os possíveis danos.
- **Sistemas de recomendação**: Monitoram os gostos do usuários para fornecer produtos personalizados que atendam as necessidades do usuário.

## 5.2. Conceitos
Ao falarmos sobre Machine Learning Não Supervisionado, é fundamental definirmos o que é **similaridade**, sendo esse o conceito fundamental utilizado para o agrupamento dos dados. Esse metodo de parametrização envolve realizar uma comparação de 0 a 1, neste caso quanto mais próximo do 0, menor a similaridade do item, quanto mais próximo do 1, maior similaridade.

## 5.3. Exemplo
A estruturação de um modelo de machine leearning não supervisionado requer os seguintes requisitos para apresentar maior acurácia:
1. Padronização de dados e processo de qualidade de dados.
  Desta forma os dados precisam estar normalizados e padronizados, além de apresentar consistencia temporal dos dados, ou seja, os dados precisam apresentar boa completude de período de dados.

2. Escolha de itens com similaridade
   A similaridade de dados, é fundamental para o mapeamento de padrões pelo algoritmo, consequentemente aumentando a acurácia.

3. Escolha as metricas de similaridade identificadas pelo algoritmo.
   A adoção de métricas de similaridade identificadas pelo algoritimo é fundamental para a adoção de um modelo de machine learning não supervisionado, caso os dados não atendam as necessidades é recomendado rever os dados utilizados e as respectivas tipagens.

4. Avaliação de Resultados
   Os resultados gerados por modelos não supervisionados requerem constantes ajustes para realizar o aumento de qualidade dos resultados a serem obtidos.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/02613ac0-d105-4546-9b66-4c420060c00d" />

---

# 6. Aprendizado por reforço

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/0736fd83-ebde-4617-a979-d995c37d0ae7" />

## 6.1. Introdução
O aprendizadoo de **machine learning não supervisionado, com metodo de reforço**, é o metodo de aprendizado que envolve a obtenção de recompensa, ou seja, avaliação de resultados e ajustes com base em resultados obtidos, sendo interpretado como uma recompensa pelo algoritmo, sendo estruturado utilizando a interação do agente com o ambiente.

<img width="1165" height="650" alt="image" src="https://github.com/user-attachments/assets/27b28c9e-0e53-446f-9a98-233ed7de24a3" />

## Exemplo
Um dos exemplos mais usuais de aprendizado de maquina por reforço, é o método implantado em veículos autonomos, no qual as informações são validadas em tempo real, resultando assim em recompensa. Outro exemplo são dispositivos como Alexas e outros assistentes, que são ajustados e validados em tempo real. Alguns outros exemplos são apresentados na figura a seguir:

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/0c343a4c-fb1d-4505-8f44-67652d28cbfc" />

## 6.2. Conceitos
O **aprendizado por reforço** requer algumas definições importantes, que fazem parte do seu conceito de funcionamento, sendo eles:
#### Agentes
Agentes são aprendizes de conhecimento e tomadores de decisão, sendo o responsável pela forma que o algoritmo reage.

#### Enviroment(Ambiente)
É o cenário no qual o algoritmo está inserido.

#### State(Estado)
É a condição no qual o agente se encontra no ambiente.

#### Action(Ação)
São o conjunto de ações disponíveis para o agente estar executando no ambiente.

#### Policy(Politicas)
São os procedimentos aprendidos pelo algoritmo de reforço, após o aprendizado o "conhecimento" é incorporado ao algoritmo. Sendo desta forma o responsável por determinar quais as ações corretas a serem tomadas pelo agente ao interagir com o ambiente, desta forma alterando o estado do agente e modificando o ambiente.

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/99491052-587b-4353-a6d1-8d790800a6ba" />

## Exemplo

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/fd59d4ec-0ddb-40fb-880a-f7ad165dadad" />








