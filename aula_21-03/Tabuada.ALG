Algoritmo "Tabuada"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   :
// Autor(a)    : Anelize Nardelli
// Data atual  : 21/03/2025

Var
i, numeroEscolhido, numeroMultiplicado, simOuNao, j, k, resultadoJK : inteiro

Inicio

// Tabuada de um �nico n�mero, escolhido pelo usu�rio
Escreval("Voc� deseja ver a tabuada de qual n�mero? Digite:")
// O usu�rio escolhe um n�mero
Leia (numeroEscolhido)

// Setamos a vari�vel i com in�cio no n�mero 1 e fim no n�mero 10
// A estrutura de repeti��o 'PARA' repete a multiplica��o com o n�mero escolhido
Para i de 1 at� 10 Fa�a
     numeroMultiplicado <- i * numeroEscolhido
     // Mostra o output do resultado
     Escreval(i," x",numeroEscolhido," =",numeroMultiplicado)
Fimpara

// Aqui o usu�rio decide se quer ver as outras tabuadas
Escreval("")
Escreval("Deseja consultar as outras tabuadas?")
Escreval("Digite 1 para 'Sim' e 2 para 'N�o':")
leia(simOuNao)

Se (simOuNao = 1) Ent�o
   // Define que ser�o mostradas as tabuadas de (j) 1 at� 10
   Para j de 1 at� 10 Fa�a
        Escreval("")
        Escreval("Tabuada do ",j,":")
        // Multiplica a vari�vel atual (j) pelo n�mero (k) de 1 at� 10
        Para k de 1 at� 10 Fa�a
             resultadoJK <- j * k
             // Mostra o output do resultado
             Escreval(j," x",k," =",resultadoJK)
        Fimpara
   Fimpara
Senao
   Escreval("")
   Escreval("Obrigada por usar o programa!")
Fimse

Fimalgoritmo