Algoritmo "MediaAlturas"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   :
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/03/2025
Var
quantidadeJogadores, i : inteiro
alturaJogador, somaAlturas, mediaAlturas : real


Inicio
Escreval("Quantos jogadores existem no seu time?")
Leia(quantidadeJogadores)

Para i de 1 at� quantidadeJogadores Fa�a
     Escreval("")
     Escreval("Qual a altura do jogador",i," em cent�metros?")
     Leia(alturaJogador)
     somaAlturas <- somaAlturas + alturaJogador
Fimpara

mediaAlturas <- somaAlturas / quantidadeJogadores
Escreval("")
Escreval("A altura m�dia do time �: ",mediaAlturas," cent�metros.")

Fimalgoritmo