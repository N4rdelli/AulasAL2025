Algoritmo "ExercicioVetores1"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva
// Autor(a)    : Anelize Nardelli
// Data atual  : 09/05/2025

// Enunciado: Crie um algoritmo que leia 5 números inteiros e os armazene em um vetor. Em seguida, exiba os números na ordem em que foram digitados.

Var
// Seção de Declarações das variáveis

// Declara o nome do vetor, o tamanho dele e o tipo de variável que ele aceita
numeros: vetor[1..5] de inteiro

// Declara o controle do Para
i: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

// Estrutura de repetição PARA que recebe os números digitados
Para i de 1 até 5 Faça
     Escreva("Digite o ",i,"º número: ")
     Leia(numeros[i])
FimPara

Escreval("")
Escreval("Os números digitados foram:")

// Estrutura de repetição PARA que mostra os números digitados
Para i de 1 até 5 Faça
     Escreval(i,"º número: ",numeros[i])
FimPara

Fimalgoritmo