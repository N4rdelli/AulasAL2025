Algoritmo "Comparacao"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   :
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/03/2025
Var
numeroUm, numeroDois, numero, i, maiorNumero, menorNumero : inteiro


Inicio
Escreval("Quer saber se um número é maior que outro?")
Escreva("Digite o primeiro número: ")
Leia(numeroUm)
Escreva("Digite o segundo número: ")
Leia(numeroDois)

Se (numeroUm = numeroDois) Então
   Escreval("")
   Escreval("Os números são iguais!")
   Senão
        Se (numeroUm > numeroDois) Então
           Escreval("")
           Escreval("O número ",numeroUm," é maior que o número ",numeroDois)
           Senão
                Se (numeroDois > numeroUm) Então
                   Escreval("")
                   Escreval("O número ",numeroDois," é maior que o número",numeroUm)
                Fimse
        Fimse
Fimse

Escreval("")
Escreval("Que tal testarmos com dez números de uma vez só?")

Para i de 1 até 10 faça
     Escreva("Digite um número: ")
     Leia(numero)
     
     // Aqui nós setamos o maior e o menor número para o primeiro número digitado (porque é o único valor até o momento)
     Se (i = 1) Então
        maiorNumero <- numero
        menorNumero <- numero
     Fimse
     
     // Compara o número atual com o maior número
     Se (numero > maiorNumero) Então
        maiorNumero <- numero
     Fimse
     
     // Compara o número atual com o menor número
     Se (numero < menorNumero) Então
        menorNumero <- numero
     Fimse

Fimpara

Fimalgoritmo