Algoritmo "ExerciciosVetores3"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva
// Autor(a)    : Anelize Nardelli
// Data atual  : 09/05/2025

// Enunciado   : Escreva um algoritmo que leia 8 n�meros inteiros em um vetor e exiba quantos deles s�o pares.

Var
// Se��o de Declara��es das vari�veis 

// Declara o nome do vetor, o tamanho dele e o tipo de vari�vel que ele aceita
numeros: vetor[1..8] de inteiro

// Declara o controle do Para
i: inteiro

// Declara a vari�vel que armazena a quantidade de n�meros pares e �mpares digitados
quantidadeNumerosPares, quantidadeNumerosImpares: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

// Iniciliza a v�riavel que armazena a quantidade de n�meros pares
quantidadeNumerosPares <- 0
quantidadeNumerosImpares <- 0

// Estrutura de repeti��o PARA que recebe os n�meros digitados
Para i de 1 at� 8 Fa�a
     Escreva("Digite o ",i,"� n�mero: ")
     Leia(numeros[i])

     // Estrutura de decis�o SE que verifica se o n�mero � par
     Se ((numeros[i] % 2) = 0) Ent�o
        Escreval("Esse n�mero � par!")
        
        quantidadeNumerosPares <- quantidadeNumerosPares + 1
     Sen�o
        Escreval("Esse n�mero � �mpar!")
        
        quantidadeNumerosImpares <- quantidadeNumerosImpares + 1
     Fimse
FimPara

// Mostra a quantidade de n�meros pares e �mpares
Escreval("")
Escreval("Quantidade de n�meros pares digitados: ",quantidadeNumerosPares)
Escreval("Quantidade de n�meros �mpares digitados: ",quantidadeNumerosImpares)


Fimalgoritmo