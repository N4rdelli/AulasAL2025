Algoritmo "ExercicioVetores1"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva
// Autor(a)    : Anelize Nardelli
// Data atual  : 09/05/2025

// Enunciado: Crie um algoritmo que leia 5 n�meros inteiros e os armazene em um vetor. Em seguida, exiba os n�meros na ordem em que foram digitados.

Var
// Se��o de Declara��es das vari�veis

// Declara o nome do vetor, o tamanho dele e o tipo de vari�vel que ele aceita
numeros: vetor[1..5] de inteiro

// Declara o controle do Para
i: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...

// Estrutura de repeti��o PARA que recebe os n�meros digitados
Para i de 1 at� 5 Fa�a
     Escreva("Digite o ",i,"� n�mero: ")
     Leia(numeros[i])
FimPara

Escreval("")
Escreval("Os n�meros digitados foram:")

// Estrutura de repeti��o PARA que mostra os n�meros digitados
Para i de 1 at� 5 Fa�a
     Escreval(i,"� n�mero: ",numeros[i])
FimPara

Fimalgoritmo