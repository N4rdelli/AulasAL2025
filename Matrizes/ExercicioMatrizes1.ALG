Algoritmo "ExercicioMatrizes1"
// Disciplina: L�gica de Programa��o e Algoritmos
// Professor: MSc. Tiago Antonio da Silva
// Autora: Anelize Nardelli
// Data atual: 16/05/2025

// Enunciado: Crie um jogo da velha, onde cada jogador escolhe a linha e coluna da sua jogada. Seu jogo dever� ser capaz de avaliar quem ganhou a cada jogada.

Var
// Se��o de Declara��es das vari�veis

jogo : vetor [1..3, 1..3] de caracter
linha, coluna, i, j, jogadas : inteiro
jogador, ganhador : caracter

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

// Inicializa os valores da matriz com " "
Para i de 1 at� 3 Fa�a
   Para j de 1 at� 3 Fa�a
      jogo[i, j] <- " "
   Fimpara
Fimpara

// Inicializa a vari�vel que determina o ganhador
ganhador <- ""

// Determina qual jogador estar� fazendo a sua jogada (X ou O)
jogador <- "X"

// Mostra o jogo da velha em si
Escreval("JOGO DA VELHA ")
Escreval("")
Escreval("    |     |    ")
Escreval("---------------")
Escreval("    |     |    ")
Escreval("---------------")
Escreval("    |     |    ")

Para jogadas de 1 at� 9 Fa�a

   // Faz a pergunta para o jogador
   Escreval("")
   Escreval("Em qual posi��o voc� que colocar o ",jogador,"?")

   // Repete as instru��es at� o jogador optar por uma posi��o dison�vel
   Repita
   
      // Recebe a linha escolhida e verifica se ela existe
      Repita
         Escreva("Informe a linha: ")
         Leia(linha)

         Se (linha <= 0) ou (linha > 3) Ent�o
            Escreval("")
            Escreval("Essa linha n�o existe no Jogo da Velha. Tente novamente.")
         FimSe
      At� (linha > 0) e (linha <= 3)

      // Recebe a linha escolhida e verifica se ela existe
      Repita
         Escreva("Informe a coluna: ")
         Leia(coluna)

         Se (coluna <= 0) ou (coluna > 3) Ent�o
            Escreval("")
            Escreval("Essa linha n�o existe no Jogo da Velha. Tente novamente.")
         FimSe
      At� (coluna > 0) e (coluna <= 3)

      Se (jogo[linha, coluna] <> " ") Ent�o
         Escreval("")
         Escreval("Parece que essa posi��o j� est� ocupada. Tente novamente!")
      FimSe
   At� (jogo[linha, coluna] = " ")
  
   // Atribui o jogador (X ou O) para a posi��o escolhida
   jogo[linha, coluna] <- jogador
   
   Limpatela()

   // Exibe novamente o Jogo da Velha, com os novos valores
   Escreval("JOGO DA VELHA ")
   Escreval("")
   Escreval("Jogada ", jogadas, " de 9: ")
   Escreval("")
   Escreval(" ", jogo[1,1],"  |  ",jogo[1,2],"  |  ", jogo[1,3])
   Escreval("---------------")
   Escreval(" ", jogo[2,1],"  |  ",jogo[2,2],"  |  ", jogo[2,3])
   Escreval("---------------")
   Escreval(" ", jogo[3,1],"  |  ",jogo[3,2],"  |  ", jogo[3,3])
   
   // Verifica quem ganhou linha a linha.
   Para i de 1 at� 3 Fa�a
      Se (jogo[i,1] = "X") e (jogo[i,2] = "X") e (jogo[i,3] = "X") Ent�o
         ganhador <- "X"
         Interrompa
      Fimse

      Se (jogo[i,1] = "O") e (jogo[i,2] = "O") e (jogo[i,3] = "O") Ent�o
         ganhador <- "O"
         Interrompa
      Fimse
   Fimpara
   
   // Verificando quem ganhou coluna a coluna.
   Para i de 1 at� 3 Fa�a
      Se (jogo[1,i] = "X") e (jogo[2,i] = "X") e (jogo[3,i] = "X") Ent�o
         ganhador <- "X"
         Interrompa
      FimSe

      Se (jogo[1,i] = "O") e (jogo[2,i] = "O") e (jogo[3,i] = "O") Ent�o
         ganhador <- "O"
         Interrompa
      FimSe
   Fimpara
   
   // Verifica quem ganhou passando por uma das diagonais
   Se (jogo[1,1] = "X") e (jogo[2,2] = "X") e (jogo[3,3] = "X") Ent�o
      ganhador <- "X"
   FimSe
   
   Se (jogo[1,1] = "O") e (jogo[2,2] = "O") e (jogo[3,3] = "O") Ent�o
      ganhador <- "O"
   FimSe
   
   // Verifica quem ganhou passando pela outra diagonal
   Se (jogo[1,3] = "X") e (jogo[2,2] = "X") e (jogo[3,1] = "X") Ent�o
      ganhador <- "X"
   FimSe

   Se (jogo[1,3] = "O") e (jogo[2,2] = "O") e (jogo[3,1] = "O") Ent�o
      ganhador <- "O"
   FimSe
   
   // Verifica a cada jogada se temos um ganhador (e declara ao usu�rio)
   Se(ganhador <> "") Ent�o
      Escreval("")
      Escreval("O ", ganhador, " ganhou! Parab�ns.")
      Interrompa
   Fimse
   
   // Verifica na �ltima jogada se temos um empate (e declara ao usu�rio)
   Se (jogadas = 9) e (ganhador = "") Ent�o
      Escreval("")
      Escreval("Fim de Jogo. Temos um EMPATE!")
      Escreval("Parab�ns aos jogadores!")
      Interrompa
   FimSe

   // Estamos dentro do PARA de cada jogada. A cada jogada, n�s trocamos o jogador
   Se (jogador = "X") Ent�o
      jogador <- "O"
   Sen�o
      jogador <- "X"
   Fimse
FimPara

Fimalgoritmo