Algoritmo "M�dias e Men��es"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   : Esse algoritmo l� duas notas de um aluno, calcula sua m�dia de pontos e atribui uma men��o ao aluno baseada nesse valor.
// Autor(a)    : Anelize Nardelli
// Data atual  : 07/03/2025
Var

primeiraNota : real
segundaNota : real
media : real
mencao : caractere

Inicio

Escreval("Ol� aluno(a)! Informe a sua primeira nota:")
Leia(primeiraNota)
Escreval("Agora informe a sua segunda nota:")
Leia(segundaNota)

media <- (primeiraNota + segundaNota)/2

Se (media >= 8.5) Ent�o
   mencao <- "A")
Fimse

Se (media >= 7.5) E (media < 8.5) Ent�o
   mencao <- "B")
Fimse

Se (media >= 6.0) E (media < 7.5) Ent�o
   mencao <- "C")
Fimse

Se (media >= 5.0) E (media < 6.0) Ent�o
   mencao <- "D")
Fimse

Se (media < 5.0) Ent�o
   mencao <- "E")
Fimse

Escreval("")
Escreval("A sua m�dia foi de",media," pontos, portanto a sua men��o � ",mencao,"!")

Fimalgoritmo