Algoritmo "Comparacao"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   :
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/03/2025
Var
numeroUm, numeroDois, numero, i, maiorNumero, menorNumero : inteiro


Inicio
Escreval("Quer saber se um n�mero � maior que outro?")
Escreva("Digite o primeiro n�mero: ")
Leia(numeroUm)
Escreva("Digite o segundo n�mero: ")
Leia(numeroDois)

Se (numeroUm = numeroDois) Ent�o
   Escreval("")
   Escreval("Os n�meros s�o iguais!")
   Sen�o
        Se (numeroUm > numeroDois) Ent�o
           Escreval("")
           Escreval("O n�mero ",numeroUm," � maior que o n�mero ",numeroDois)
           Sen�o
                Se (numeroDois > numeroUm) Ent�o
                   Escreval("")
                   Escreval("O n�mero ",numeroDois," � maior que o n�mero",numeroUm)
                Fimse
        Fimse
Fimse

Escreval("")
Escreval("Que tal testarmos com dez n�meros de uma vez s�?")

Para i de 1 at� 10 fa�a
     Escreva("Digite um n�mero: ")
     Leia(numero)
     
     // Aqui n�s setamos o maior e o menor n�mero para o primeiro n�mero digitado (porque � o �nico valor at� o momento)
     Se (i = 1) Ent�o
        maiorNumero <- numero
        menorNumero <- numero
     Fimse
     
     // Compara o n�mero atual com o maior n�mero
     Se (numero > maiorNumero) Ent�o
        maiorNumero <- numero
     Fimse
     
     // Compara o n�mero atual com o menor n�mero
     Se (numero < menorNumero) Ent�o
        menorNumero <- numero
     Fimse

Fimpara

Fimalgoritmo