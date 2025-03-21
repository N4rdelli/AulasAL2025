Algoritmo "MediaAlturas"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   :
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/03/2025
Var
quantidadeJogadores, i : inteiro
alturaJogador, somaAlturas, mediaAlturas : real


Inicio
Escreval("Quantos jogadores existem no seu time?")
Leia(quantidadeJogadores)

Para i de 1 até quantidadeJogadores Faça
     Escreval("")
     Escreval("Qual a altura do jogador",i," em centímetros?")
     Leia(alturaJogador)
     somaAlturas <- somaAlturas + alturaJogador
Fimpara

mediaAlturas <- somaAlturas / quantidadeJogadores
Escreval("")
Escreval("A altura média do time é: ",mediaAlturas," centímetros.")

Fimalgoritmo