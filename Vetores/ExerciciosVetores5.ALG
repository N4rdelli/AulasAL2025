Algoritmo "ExerciciosVetores5"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva
// Autor(a)    : Anelize Nardelli
// Data atual  : 09/05/2025

// Enunciado   :  Crie um vetor de 10 posi��es com n�meros inteiros digitados pelo usu�rio. Em seguida, leia um n�mero inteiro e informe se ele est� presente no vetor e em qual(ais) posi��o(�es)

Var
// Se��o de Declara��es das vari�veis 

// Declara o nome do vetor, o tamanho dele e o tipo de vari�vel que ele aceita
numeros: vetor[1..10] de inteiro

// Declara o controle do Para
i: inteiro

// Declara o valor que vamos procurar
valorProcurado : inteiro

// Declara a vari�vel que armazena se o valor foi encontrado ou n�o
encontrado : logico

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

// Inicializa a vari�vel que armazena se o valor foi encontrado ou n�o
encontrado <- falso

// Estrutura de repeti��o PARA que recebe os n�meros digitados
Para i de 1 at� 10 Fa�a
     Escreva("Digite o ",i,"� n�mero: ")
     Leia(numeros[i])
FimPara

// Recebe o valor que ser� procurado no vetor
Escreval("")
Escreva("Digite o valor a ser procurado: ")
Leia(valorProcurado)

// Procura o n�mero digitado e retorna em qual posi��o ele foi encontrado (se foi)
Para i de 1 ate 10 Fa�a
     Se (numeros[i] = valorProcurado) Ent�o
        Escreval("Valor encontrado na posi��o", i)
        encontrado <- verdadeiro
     Fimse
Fimpara

// Retorna o texto se o n�mero n�o foi encontrado
Se (n�o encontrado) Ent�o
   Escreval("")
   Escreval("Valor n�o encontrado.")
Fimse



Fimalgoritmo