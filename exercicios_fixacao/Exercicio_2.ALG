Algoritmo "Exercicio_2"

Var
numeroUm, numeroDois, maiorNumero, menorNumero : inteiro


Inicio
Escreval("Exercício de Fixação 2:")
Escreval("2) No tribunal dos números, dois valores disputam quem é o maior. Leia doiss números inteiros e diga qual deles é o maior, ou declare empate em caso de igualdade.")

Escreval("")
Escreval("-----------------------------------------------------------------------------------------")
Escreval("No tribunal...")
Escreval("")
Escreva("Número Um, qual é o seu valor?")
Leia(numeroUm)

maiorNumero <- numeroUm
menorNumero <- numeroDois

Escreval("")
Escreva("Número Dois, qual é o seu valor?")
Leia(numeroDois)

Se (numeroDois > numeroUm) Então
   maiorNumero <- numeroDois
Fimse

Se (numeroDois < numeroUm) Então
   menorNumero <- numeroDois
Fimse

Se (numeroUm = numeroDois) Então
   Escreval("")
   Escreval("Eu declaro... EMPATE!")
   Senão
   Escreval("")
   Escreval("Eu declaro que o maior número é o número",maiorNumero,"!")
Fimse


Fimalgoritmo