Algoritmo "Adivinha_EstruturaRepita_Randi"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   : Esse código estabelece um número aleatório e oferece dicas para que o usuário o adivinhe
// Autor(a)    : Anelize Nardelli
// Data atual  : 28/03/2025
Var

numeroEscolhido, numeroPreEstabelecido, numeroTentativas : inteiro

Inicio

Escreval("Quer adivinhar um número de 1 a 100?")
numeroPreEstabelecido <- Randi(100)

Repita
      Repita
         Escreval("")
         Escreval("Digite um número de 1 a 100:")
         leia(numeroEscolhido)
         
         Se (numeroEscolhido < 1) OU (numeroEscolhido > 100) Então
            Escreval("O número precisa estar entre 1 e 100!")
         Fimse
      Até (numeroEscolhido >= 1) E (numeroEscolhido <= 100)
      
      Se (numeroEscolhido > numeroPreEstabelecido) Então
         Escreval("")
         Escreval("O número é menor que esse!")
      Fimse
      
      Se (numeroEscolhido < numeroPreEstabelecido) Então
         Escreval("")
         Escreval("O número é maior que esse!")
      Fimse
      
      numeroTentativas <- numeroTentativas + 1
Até (numeroEscolhido = numeroPreEstabelecido)

Escreval("")
Escreval("PARABÉNS! Você adivinhou em ",numeroTentativas," tentativas!")

Fimalgoritmo