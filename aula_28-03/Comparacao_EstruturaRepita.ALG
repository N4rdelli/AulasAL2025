Algoritmo "Comparacao_EstruturaRepita"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   : Esse c�digo compara o valor dos n�mero digitados pelo usu�rio.
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
      Escreval("Digite um n�mero inteiro:")
      Leia(numeroEscolhido)
      
      qtdNumerosDigitados <- qtdNumerosDigitados + 1
      
      Se (qtdNumerosDigitados = 1) Ent�o
         maiorNumero <- numeroEscolhido;
         menorNumero <- numeroEscolhido;
         Sen�o Se (qtdNumerosDigitados >= 2) Ent�o
               Se (numeroEscolhido > maiorNumero) Ent�o
                  maiorNumero <- numeroEscolhido
               Fimse
               
               Se (numeroEscolhido < menorNumero) Ent�o
                  menorNumero <- numeroEscolhido
               Fimse
      Fimse
      
      Escreval("--------------------------------------")
      Escreval("Quantidade de N�meros Digitados:",qtdNumerosDigitados)
      Escreval("Maior n�mero at� agora:",maiorNumero)
      Escreval("Menor n�mero at� agora:",menorNumero)
      Escreval("--------------------------------------")
      
      Repita
         Escreval("
         ")
         Escreval("Deseja continuar? Digite 1 para continuar e 2 para parar.")
         Leia(desejaContinuar)
      At� (desejaContinuar = 1) OU (desejaContinuar = 2);
At� (desejaContinuar = 2)

Escreval("")
Escreval("Obrigada por executar o programa!")

Fimalgoritmo