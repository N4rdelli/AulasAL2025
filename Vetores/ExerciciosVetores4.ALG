Algoritmo "ExerciciosVetores4"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva
// Autor(a)    : Anelize Nardelli
// Data atual  : 09/05/2025

// Enunciado   : Leia 6 valores num�ricos inteiros e armazene em um vetor. Depois, exiba os valores na ordem inversa da que foram digitados.

Var
// Se��o de Declara��es das vari�veis 

// Declara o nome do vetor, o tamanho dele e o tipo de vari�vel que ele aceita
numeros: vetor[1..6] de inteiro
numerosInversos: vetor[1..6] de inteiro

// Declara o controle do Para
i: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

// Estrutura de repeti��o PARA que recebe os n�meros digitados
Para i de 1 at� 6 Fa�a
     Escreva("Digite o ",i,"� n�mero: ")
     Leia(numeros[i])

     // Atribui nos n�meos para o array inverso
     numerosInversos[7-i] <- numeros[i]
FimPara

Escreval("")
Escreval("Esses foram os n�meros digitados (na ordem invertida!):")
// Mostra o vetor inverso
Para i de 1 at� 6 Fa�a
     Escreval(i,"� n�mero: ",numerosInversos[i])
FimPara



Fimalgoritmo