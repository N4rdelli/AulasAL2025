Algoritmo "ExercicioMatrizes2"
// Disciplina: Lógica de Programação e Algoritmos
// Professor: MSc. Tiago Antonio da Silva
// Autora: Anelize Nardelli
// Data atual: 16/05/2025

// Enunciado: Crie um programa que leia uma matriz 3x3 com números. O número 1 representa o tesouro, e os 0 representam locais vazios. Mostre a posição [linha, coluna] onde o tesouro está escondido.

Var
// Seção de Declarações das variáveis 
mapa : vetor[1..3, 1..3] de inteiro
i, j : inteiro
advinhaLinha, advinhaColuna : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

// Dá as boas vindas ao jogador
Escreval("Seja bem vindo à Ilha do Tesouro!")
Escreval("")
Escreval("|__---|--___|__--_|")
Escreval("|____-|----_|_____|")
Escreval("|---__|_____|_---_|")
Escreval("")

// Atribui os valores da Matriz
Para i de 1 até 3 Faça
   Para j de 1 até 3 Faça
      mapa[i, j] <- randi(2)
   FimPara
FimPara

// Interagindo com o usuário
Escreval("")
Escreval("Quer testar a sorte? Você só tem uma tentativa!")

// Recebe e verifica o valor da linha
Repita
   Escreval("Em qual linha você acha que o tesouro está?")
   Leia(advinhaLinha)
   
   Se (advinhaLinha <= 0) ou (advinhaLinha > 3) Então
      Escreval("Essa linha não existe no nosso mapa!")
      Escreval("Tente novamente!")
   FimSe
Até (advinhaLinha > 0) e (advinhaLinha <= 3)

// Recebe e verifica o valor da coluna
Repita
   Escreval("E em qual coluna você acha que o tesouro está?")
   Leia(advinhaColuna)

   Se (advinhaColuna <= 0) ou (advinhaColuna > 3) Então
      Escreval("Essa coluna não existe no nosso mapa!")
      Escreval("Tente novamente!")
   FimSe
Até (advinhaColuna > 0) e (advinhaColuna <= 3)

Se (mapa[advinhaLinha, advinhaColuna] = 1) Então
   Escreval("")
   Escreval("Parabéns! Você acertou!")
Senão
   Escreval("")
   Escreval("Não foi dessa vez...")
FimSe

Escreval("")
Escreval("Aqui está o mapa completo:")
Escreval("(Terrenos com 0 não têm tesouro. Terrenos com 1 TÊM tesouro.)")
Escreval("")
Escreval("|__",mapa[1, 1],"--|--",mapa[1, 2],"__|__",mapa[1, 3],"-_|")
Escreval("|__",mapa[2, 1],"_-|--",mapa[2, 2],"-_|__",mapa[2, 3],"__|")
Escreval("|--",mapa[3, 1],"__|__",mapa[3, 2],"__|_-",mapa[3, 3],"-_|")
Escreval("")

Fimalgoritmo