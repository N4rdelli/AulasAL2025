Algoritmo "Comparacao_EstruturaRepita"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   : Esse código compara o valor dos número digitados pelo usuário.
// Autor(a)    : Anelize Nardelli
// Data atual  : 28/03/2025
Var
numeroEscolhido : inteiro
maiorNumero : inteiro
menorNumero : inteiro
qtdNumerosDigitados : inteiro
desejaContinuar : inteiro

Inicio

qtdNumerosDigitados <- 0;

Repita
      Escreval("")
      Escreval("Digite um número inteiro:")
      Leia(numeroEscolhido)
      
      qtdNumerosDigitados <- qtdNumerosDigitados + 1
      
      Se (qtdNumerosDigitados = 1) Então
         maiorNumero <- numeroEscolhido;
         menorNumero <- numeroEscolhido;
         Senão Se (qtdNumerosDigitados >= 2) Então
               Se (numeroEscolhido > maiorNumero) Então
                  maiorNumero <- numeroEscolhido
               Fimse
               
               Se (numeroEscolhido < menorNumero) Então
                  menorNumero <- numeroEscolhido
               Fimse
      Fimse
      
      Escreval("--------------------------------------")
      Escreval("Quantidade de Números Digitados:",qtdNumerosDigitados)
      Escreval("Maior número até agora:",maiorNumero)
      Escreval("Menor número até agora:",menorNumero)
      Escreval("--------------------------------------")
      
      Repita
         Escreval("
         ")
         Escreval("Deseja continuar? Digite 1 para continuar e 2 para parar.")
         Leia(desejaContinuar)
      Até (desejaContinuar = 1) OU (desejaContinuar = 2);
Até (desejaContinuar = 2)

Escreval("")
Escreval("Obrigada por executar o programa!")

Fimalgoritmo