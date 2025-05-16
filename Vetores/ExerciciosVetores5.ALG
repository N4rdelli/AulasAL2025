Algoritmo "ExerciciosVetores5"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva
// Autor(a)    : Anelize Nardelli
// Data atual  : 09/05/2025

// Enunciado   :  Crie um vetor de 10 posições com números inteiros digitados pelo usuário. Em seguida, leia um número inteiro e informe se ele está presente no vetor e em qual(ais) posição(ões)

Var
// Seção de Declarações das variáveis 

// Declara o nome do vetor, o tamanho dele e o tipo de variável que ele aceita
numeros: vetor[1..10] de inteiro

// Declara o controle do Para
i: inteiro

// Declara o valor que vamos procurar
valorProcurado : inteiro

// Declara a variável que armazena se o valor foi encontrado ou não
encontrado : logico

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

// Inicializa a variável que armazena se o valor foi encontrado ou não
encontrado <- falso

// Estrutura de repetição PARA que recebe os números digitados
Para i de 1 até 10 Faça
     Escreva("Digite o ",i,"º número: ")
     Leia(numeros[i])
FimPara

// Recebe o valor que será procurado no vetor
Escreval("")
Escreva("Digite o valor a ser procurado: ")
Leia(valorProcurado)

// Procura o número digitado e retorna em qual posição ele foi encontrado (se foi)
Para i de 1 ate 10 Faça
     Se (numeros[i] = valorProcurado) Então
        Escreval("Valor encontrado na posição", i)
        encontrado <- verdadeiro
     Fimse
Fimpara

// Retorna o texto se o número não foi encontrado
Se (não encontrado) Então
   Escreval("")
   Escreval("Valor não encontrado.")
Fimse



Fimalgoritmo