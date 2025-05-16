Algoritmo "ExercicioMatrizes1"
// Disciplina: Lógica de Programação e Algoritmos
// Professor: MSc. Tiago Antonio da Silva
// Autora: Anelize Nardelli
// Data atual: 16/05/2025

// Enunciado: Crie um jogo da velha, onde cada jogador escolhe a linha e coluna da sua jogada. Seu jogo deverá ser capaz de avaliar quem ganhou a cada jogada.

Var
// Seção de Declarações das variáveis

jogo : vetor [1..3, 1..3] de caracter
linha, coluna, i, j, jogadas : inteiro
jogador, ganhador : caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

// Inicializa os valores da matriz com " "
Para i de 1 até 3 Faça
   Para j de 1 até 3 Faça
      jogo[i, j] <- " "
   Fimpara
Fimpara

// Inicializa a variável que determina o ganhador
ganhador <- ""

// Determina qual jogador estará fazendo a sua jogada (X ou O)
jogador <- "X"

// Mostra o jogo da velha em si
Escreval("JOGO DA VELHA ")
Escreval("")
Escreval("    |     |    ")
Escreval("---------------")
Escreval("    |     |    ")
Escreval("---------------")
Escreval("    |     |    ")

Para jogadas de 1 até 9 Faça

   // Faz a pergunta para o jogador
   Escreval("")
   Escreval("Em qual posição você que colocar o ",jogador,"?")

   // Repete as instruções até o jogador optar por uma posição disonível
   Repita
   
      // Recebe a linha escolhida e verifica se ela existe
      Repita
         Escreva("Informe a linha: ")
         Leia(linha)

         Se (linha <= 0) ou (linha > 3) Então
            Escreval("")
            Escreval("Essa linha não existe no Jogo da Velha. Tente novamente.")
         FimSe
      Até (linha > 0) e (linha <= 3)

      // Recebe a linha escolhida e verifica se ela existe
      Repita
         Escreva("Informe a coluna: ")
         Leia(coluna)

         Se (coluna <= 0) ou (coluna > 3) Então
            Escreval("")
            Escreval("Essa linha não existe no Jogo da Velha. Tente novamente.")
         FimSe
      Até (coluna > 0) e (coluna <= 3)

      Se (jogo[linha, coluna] <> " ") Então
         Escreval("")
         Escreval("Parece que essa posição já está ocupada. Tente novamente!")
      FimSe
   Até (jogo[linha, coluna] = " ")
  
   // Atribui o jogador (X ou O) para a posição escolhida
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
   Para i de 1 até 3 Faça
      Se (jogo[i,1] = "X") e (jogo[i,2] = "X") e (jogo[i,3] = "X") Então
         ganhador <- "X"
         Interrompa
      Fimse

      Se (jogo[i,1] = "O") e (jogo[i,2] = "O") e (jogo[i,3] = "O") Então
         ganhador <- "O"
         Interrompa
      Fimse
   Fimpara
   
   // Verificando quem ganhou coluna a coluna.
   Para i de 1 até 3 Faça
      Se (jogo[1,i] = "X") e (jogo[2,i] = "X") e (jogo[3,i] = "X") Então
         ganhador <- "X"
         Interrompa
      FimSe

      Se (jogo[1,i] = "O") e (jogo[2,i] = "O") e (jogo[3,i] = "O") Então
         ganhador <- "O"
         Interrompa
      FimSe
   Fimpara
   
   // Verifica quem ganhou passando por uma das diagonais
   Se (jogo[1,1] = "X") e (jogo[2,2] = "X") e (jogo[3,3] = "X") Então
      ganhador <- "X"
   FimSe
   
   Se (jogo[1,1] = "O") e (jogo[2,2] = "O") e (jogo[3,3] = "O") Então
      ganhador <- "O"
   FimSe
   
   // Verifica quem ganhou passando pela outra diagonal
   Se (jogo[1,3] = "X") e (jogo[2,2] = "X") e (jogo[3,1] = "X") Então
      ganhador <- "X"
   FimSe

   Se (jogo[1,3] = "O") e (jogo[2,2] = "O") e (jogo[3,1] = "O") Então
      ganhador <- "O"
   FimSe
   
   // Verifica a cada jogada se temos um ganhador (e declara ao usuário)
   Se(ganhador <> "") Então
      Escreval("")
      Escreval("O ", ganhador, " ganhou! Parabéns.")
      Interrompa
   Fimse
   
   // Verifica na última jogada se temos um empate (e declara ao usuário)
   Se (jogadas = 9) e (ganhador = "") Então
      Escreval("")
      Escreval("Fim de Jogo. Temos um EMPATE!")
      Escreval("Parabéns aos jogadores!")
      Interrompa
   FimSe

   // Estamos dentro do PARA de cada jogada. A cada jogada, nós trocamos o jogador
   Se (jogador = "X") Então
      jogador <- "O"
   Senão
      jogador <- "X"
   Fimse
FimPara

Fimalgoritmo