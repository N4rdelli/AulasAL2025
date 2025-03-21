Algoritmo "Tabuada"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   :
// Autor(a)    : Anelize Nardelli
// Data atual  : 21/03/2025

Var
i, numeroEscolhido, numeroMultiplicado, simOuNao, j, k, resultadoJK : inteiro

Inicio

// Tabuada de um único número, escolhido pelo usuário
Escreval("Você deseja ver a tabuada de qual número? Digite:")
// O usuário escolhe um número
Leia (numeroEscolhido)

// Setamos a variável i com início no número 1 e fim no número 10
// A estrutura de repetição 'PARA' repete a multiplicação com o número escolhido
Para i de 1 até 10 Faça
     numeroMultiplicado <- i * numeroEscolhido
     // Mostra o output do resultado
     Escreval(i," x",numeroEscolhido," =",numeroMultiplicado)
Fimpara

// Aqui o usuário decide se quer ver as outras tabuadas
Escreval("")
Escreval("Deseja consultar as outras tabuadas?")
Escreval("Digite 1 para 'Sim' e 2 para 'Não':")
leia(simOuNao)

Se (simOuNao = 1) Então
   // Define que serão mostradas as tabuadas de (j) 1 até 10
   Para j de 1 até 10 Faça
        Escreval("")
        Escreval("Tabuada do ",j,":")
        // Multiplica a variável atual (j) pelo número (k) de 1 até 10
        Para k de 1 até 10 Faça
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