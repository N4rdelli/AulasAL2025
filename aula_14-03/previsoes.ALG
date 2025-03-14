Algoritmo "Previsoes"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Anelize Nardelli
// Data atual  : 14/03/2025
Var
dado : inteiro

Inicio
Escreval("Quer saber como será seu dia hoje? Digite um número de 1 a 6: ")
Leia(dado)

Escolha dado
     Caso 1
          Escreval("Preste atenção nas oportunidades de hoje!")
     Caso 2
          Escreval("Dia com muita energia para resolver os assuntos familiares.")
     Caso 3
          Escreval("Tome cuidado com brigas e discussões...")
     Caso 4
          Escreval("Hoje seu dia será calmo. Saiba apreciar os pequenos detalhes!")
     Caso 5
          Escreval("Ótimo momento para mudanças radicais na sua vida!")
     Caso 6
          Escreval("Ouvir sua intuição pode ajudar no dia der hoje!")
     Outrocaso
          Escreval("O número não é válido")
          Escreval("Digite um número de 1 a 6")
          Leia(dado)
     Fimescolha
Fimalgoritmo