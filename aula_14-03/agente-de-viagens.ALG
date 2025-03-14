Algoritmo "agente-de-viagens"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   : Esse programa oferece uma dica para determinado destino de viagem
// Autor(a)    : Anelize Nardelli
// Data atual  : 14/03/2025
Var
destino : inteiro


Inicio
Escreval("Seja bem vindo ao seu agente de viagens! Informe o destino:")
Escreval("Digite 1 para escolher PRAIA.")
Escreval("Digite 2 para escolher MONTANHA.")
Escreval("Digite 3 para escolher CIDADE GRANDE.")
Escreval("Digite 4 para escolher INTERIOR.")
leia(destino)

Escolha destino
        caso 1
             Escreval("")
             Escreval("Praia? Ótimo! Não esqueça o protetor solar!")
        caso 2
             Escreval("")
             Escreval("Montanha? Leve um agasalho.")
        caso 3
             Escreval("")
             Escreval("Cidade Grande? Aproveite para explorar os pontos turísticos e a gastronomia local!")
        caso 4
             Escreval("")
             Escreval("Interior? Que delícia! Aproveite a tranquilidade!")
        outrocaso
             Escreval("")
             Escreval("O número digitado é inválido. Digite um número de 1 a 4.")
Fimescolha
Fimalgoritmo