Algoritmo "ExerciciosVetores3"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva
// Autor(a)    : Anelize Nardelli
// Data atual  : 09/05/2025

// Enunciado   : Escreva um algoritmo que leia 8 números inteiros em um vetor e exiba quantos deles são pares.

Var
// Seção de Declarações das variáveis 

// Declara o nome do vetor, o tamanho dele e o tipo de variável que ele aceita
numeros: vetor[1..8] de inteiro

// Declara o controle do Para
i: inteiro

// Declara a variável que armazena a quantidade de números pares e ímpares digitados
quantidadeNumerosPares, quantidadeNumerosImpares: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

// Iniciliza a váriavel que armazena a quantidade de números pares
quantidadeNumerosPares <- 0
quantidadeNumerosImpares <- 0

// Estrutura de repetição PARA que recebe os números digitados
Para i de 1 até 8 Faça
     Escreva("Digite o ",i,"º número: ")
     Leia(numeros[i])

     // Estrutura de decisão SE que verifica se o número é par
     Se ((numeros[i] % 2) = 0) Então
        Escreval("Esse número é par!")
        
        quantidadeNumerosPares <- quantidadeNumerosPares + 1
     Senão
        Escreval("Esse número é ímpar!")
        
        quantidadeNumerosImpares <- quantidadeNumerosImpares + 1
     Fimse
FimPara

// Mostra a quantidade de números pares e ímpares
Escreval("")
Escreval("Quantidade de números pares digitados: ",quantidadeNumerosPares)
Escreval("Quantidade de números ímpares digitados: ",quantidadeNumerosImpares)


Fimalgoritmo