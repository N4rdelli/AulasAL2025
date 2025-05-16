Algoritmo "ExerciciosVetores4"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva
// Autor(a)    : Anelize Nardelli
// Data atual  : 09/05/2025

// Enunciado   : Leia 6 valores numéricos inteiros e armazene em um vetor. Depois, exiba os valores na ordem inversa da que foram digitados.

Var
// Seção de Declarações das variáveis 

// Declara o nome do vetor, o tamanho dele e o tipo de variável que ele aceita
numeros: vetor[1..6] de inteiro
numerosInversos: vetor[1..6] de inteiro

// Declara o controle do Para
i: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

// Estrutura de repetição PARA que recebe os números digitados
Para i de 1 até 6 Faça
     Escreva("Digite o ",i,"º número: ")
     Leia(numeros[i])

     // Atribui nos númeos para o array inverso
     numerosInversos[7-i] <- numeros[i]
FimPara

Escreval("")
Escreval("Esses foram os números digitados (na ordem invertida!):")
// Mostra o vetor inverso
Para i de 1 até 6 Faça
     Escreval(i,"º número: ",numerosInversos[i])
FimPara



Fimalgoritmo