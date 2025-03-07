Algoritmo "Médias e Menções"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   : Esse algoritmo lê duas notas de um aluno, calcula sua média de pontos e atribui uma menção ao aluno baseada nesse valor.
// Autor(a)    : Anelize Nardelli
// Data atual  : 07/03/2025
Var

primeiraNota : real
segundaNota : real
media : real
mencao : caractere

Inicio

Escreval("Olá aluno(a)! Informe a sua primeira nota:")
Leia(primeiraNota)
Escreval("Agora informe a sua segunda nota:")
Leia(segundaNota)

media <- (primeiraNota + segundaNota)/2

Se (media >= 8.5) Então
   mencao <- "A")
Fimse

Se (media >= 7.5) E (media < 8.5) Então
   mencao <- "B")
Fimse

Se (media >= 6.0) E (media < 7.5) Então
   mencao <- "C")
Fimse

Se (media >= 5.0) E (media < 6.0) Então
   mencao <- "D")
Fimse

Se (media < 5.0) Então
   mencao <- "E")
Fimse

Escreval("")
Escreval("A sua média foi de",media," pontos, portanto a sua menção é ",mencao,"!")

Fimalgoritmo