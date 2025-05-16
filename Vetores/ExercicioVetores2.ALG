Algoritmo "ExercicioVetores2"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva
// Autor(a)    : Anelize Nardelli
// Data atual  : 09/05/2025

// Enunciado   : Crie um algoritmo que leia 10 números inteiros em um vetor e calcule a soma de todos os valores armazenados.

Var
// Seção de Declarações das variáveis

// Declara o nome do vetor, o tamanho dele e o tipo de variável que ele aceita
numeros: vetor[1..10] de inteiro

// Declara o controle do Para
i: inteiro

// Declara a variável que vai guardar a soma total
somaTotal: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

// Inicializa a variável de soma
somaTotal <- 0

// Estrutura de repetição PARA que recebe os números digitados
Para i de 1 até 10 Faça
     Escreva("Digite o ",i,"º número: ")
     Leia(numeros[i])
     
     somaTotal <- somaTotal + numeros[i]
FimPara

// Mostra o valor da soma total
Escreval("")
Escreval("A soma total dos números digitados é: ",somaTotal)

Fimalgoritmo