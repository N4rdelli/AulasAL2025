Algoritmo "Previsoes"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   : Esse programa oferece previs�es pr�-definidas para o usu�rio a partir da escolha de um n�mero
// Autor(a)    : Anelize Nardelli
// Data atual  : 14/03/2025
Var
dado : inteiro

Inicio
Escreval("Quer saber como ser� seu dia hoje? Digite um n�mero de 1 a 6: ")
Leia(dado)

Escolha dado
     Caso 1
          Escreval("Preste aten��o nas oportunidades de hoje!")
     Caso 2
          Escreval("Dia com muita energia para resolver os assuntos familiares.")
     Caso 3
          Escreval("Tome cuidado com brigas e discuss�es...")
     Caso 4
          Escreval("Hoje seu dia ser� calmo. Saiba apreciar os pequenos detalhes!")
     Caso 5
          Escreval("�timo momento para mudan�as radicais na sua vida!")
     Caso 6
          Escreval("Ouvir sua intui��o pode ajudar no dia der hoje!")
     Outrocaso
          Escreval("O n�mero n�o � v�lido")
          Escreval("Digite um n�mero de 1 a 6")
          Leia(dado)
     Fimescolha
Fimalgoritmo