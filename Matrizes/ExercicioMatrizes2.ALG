Algoritmo "ExercicioMatrizes2"
// Disciplina: L�gica de Programa��o e Algoritmos
// Professor: MSc. Tiago Antonio da Silva
// Autora: Anelize Nardelli
// Data atual: 16/05/2025

// Enunciado: Crie um programa que leia uma matriz 3x3 com n�meros. O n�mero 1 representa o tesouro, e os 0 representam locais vazios. Mostre a posi��o [linha, coluna] onde o tesouro est� escondido.

Var
// Se��o de Declara��es das vari�veis 
mapa : vetor[1..3, 1..3] de inteiro
i, j : inteiro
advinhaLinha, advinhaColuna : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

// D� as boas vindas ao jogador
Escreval("Seja bem vindo � Ilha do Tesouro!")
Escreval("")
Escreval("|__---|--___|__--_|")
Escreval("|____-|----_|_____|")
Escreval("|---__|_____|_---_|")
Escreval("")

// Atribui os valores da Matriz
Para i de 1 at� 3 Fa�a
   Para j de 1 at� 3 Fa�a
      mapa[i, j] <- randi(2)
   FimPara
FimPara

// Interagindo com o usu�rio
Escreval("")
Escreval("Quer testar a sorte? Voc� s� tem uma tentativa!")

// Recebe e verifica o valor da linha
Repita
   Escreval("Em qual linha voc� acha que o tesouro est�?")
   Leia(advinhaLinha)
   
   Se (advinhaLinha <= 0) ou (advinhaLinha > 3) Ent�o
      Escreval("Essa linha n�o existe no nosso mapa!")
      Escreval("Tente novamente!")
   FimSe
At� (advinhaLinha > 0) e (advinhaLinha <= 3)

// Recebe e verifica o valor da coluna
Repita
   Escreval("E em qual coluna voc� acha que o tesouro est�?")
   Leia(advinhaColuna)

   Se (advinhaColuna <= 0) ou (advinhaColuna > 3) Ent�o
      Escreval("Essa coluna n�o existe no nosso mapa!")
      Escreval("Tente novamente!")
   FimSe
At� (advinhaColuna > 0) e (advinhaColuna <= 3)

Se (mapa[advinhaLinha, advinhaColuna] = 1) Ent�o
   Escreval("")
   Escreval("Parab�ns! Voc� acertou!")
Sen�o
   Escreval("")
   Escreval("N�o foi dessa vez...")
FimSe

Escreval("")
Escreval("Aqui est� o mapa completo:")
Escreval("(Terrenos com 0 n�o t�m tesouro. Terrenos com 1 T�M tesouro.)")
Escreval("")
Escreval("|__",mapa[1, 1],"--|--",mapa[1, 2],"__|__",mapa[1, 3],"-_|")
Escreval("|__",mapa[2, 1],"_-|--",mapa[2, 2],"-_|__",mapa[2, 3],"__|")
Escreval("|--",mapa[3, 1],"__|__",mapa[3, 2],"__|_-",mapa[3, 3],"-_|")
Escreval("")

Fimalgoritmo