Algoritmo "ExercicioVetores2"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva
// Autor(a)    : Anelize Nardelli
// Data atual  : 09/05/2025

// Enunciado   : Crie um algoritmo que leia 10 n�meros inteiros em um vetor e calcule a soma de todos os valores armazenados.

Var
// Se��o de Declara��es das vari�veis

// Declara o nome do vetor, o tamanho dele e o tipo de vari�vel que ele aceita
numeros: vetor[1..10] de inteiro

// Declara o controle do Para
i: inteiro

// Declara a vari�vel que vai guardar a soma total
somaTotal: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...

// Inicializa a vari�vel de soma
somaTotal <- 0

// Estrutura de repeti��o PARA que recebe os n�meros digitados
Para i de 1 at� 10 Fa�a
     Escreva("Digite o ",i,"� n�mero: ")
     Leia(numeros[i])
     
     somaTotal <- somaTotal + numeros[i]
FimPara

// Mostra o valor da soma total
Escreval("")
Escreval("A soma total dos n�meros digitados �: ",somaTotal)

Fimalgoritmo