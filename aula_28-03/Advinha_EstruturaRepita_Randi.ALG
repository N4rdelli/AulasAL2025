Algoritmo "Adivinha_EstruturaRepita_Randi"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   : Esse c�digo estabelece um n�mero aleat�rio e oferece dicas para que o usu�rio o adivinhe
// Autor(a)    : Anelize Nardelli
// Data atual  : 28/03/2025
Var

numeroEscolhido, numeroPreEstabelecido, numeroTentativas : inteiro

Inicio

Escreval("Quer adivinhar um n�mero de 1 a 100?")
numeroPreEstabelecido <- Randi(100)

Repita
      Repita
         Escreval("")
         Escreval("Digite um n�mero de 1 a 100:")
         leia(numeroEscolhido)
         
         Se (numeroEscolhido < 1) OU (numeroEscolhido > 100) Ent�o
            Escreval("O n�mero precisa estar entre 1 e 100!")
         Fimse
      At� (numeroEscolhido >= 1) E (numeroEscolhido <= 100)
      
      Se (numeroEscolhido > numeroPreEstabelecido) Ent�o
         Escreval("")
         Escreval("O n�mero � menor que esse!")
      Fimse
      
      Se (numeroEscolhido < numeroPreEstabelecido) Ent�o
         Escreval("")
         Escreval("O n�mero � maior que esse!")
      Fimse
      
      numeroTentativas <- numeroTentativas + 1
At� (numeroEscolhido = numeroPreEstabelecido)

Escreval("")
Escreval("PARAB�NS! Voc� adivinhou em ",numeroTentativas," tentativas!")

Fimalgoritmo