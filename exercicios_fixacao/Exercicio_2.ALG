Algoritmo "Exercicio_2"

Var
numeroUm, numeroDois, maiorNumero, menorNumero : inteiro


Inicio
Escreval("Exerc�cio de Fixa��o 2:")
Escreval("2) No tribunal dos n�meros, dois valores disputam quem � o maior. Leia doiss n�meros inteiros e diga qual deles � o maior, ou declare empate em caso de igualdade.")

Escreval("")
Escreval("-----------------------------------------------------------------------------------------")
Escreval("No tribunal...")
Escreval("")
Escreva("N�mero Um, qual � o seu valor?")
Leia(numeroUm)

maiorNumero <- numeroUm
menorNumero <- numeroDois

Escreval("")
Escreva("N�mero Dois, qual � o seu valor?")
Leia(numeroDois)

Se (numeroDois > numeroUm) Ent�o
   maiorNumero <- numeroDois
Fimse

Se (numeroDois < numeroUm) Ent�o
   menorNumero <- numeroDois
Fimse

Se (numeroUm = numeroDois) Ent�o
   Escreval("")
   Escreval("Eu declaro... EMPATE!")
   Sen�o
   Escreval("")
   Escreval("Eu declaro que o maior n�mero � o n�mero",maiorNumero,"!")
Fimse


Fimalgoritmo