Algoritmo "NotasMedia"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   : Esse programa recebe notas de alunos e calcula a m�dia entre elas. Ele tamb�m valida se as notas est�o entre 0 e 10.
// Autor(a)    : Anelize Nardelli
// Data atual  : 28/03/2025
Var
numeroAlunos : inteiro
notaUm, notaDois, mediaNotas : real

Inicio

numeroAlunos <- 1

Escreval("Ol� professor!")

Repita
      
      Repita
            Escreval("Digite a PRIMEIRA NOTA do Aluno",numeroAlunos)
            leia(notaUm)
            
            Se (notaUm < 0) OU (notaUm > 10) Ent�o
               Escreval("")
               Escreval("As notas devem ser um valor real entre 0 e 10!")
               Sen�o
                    Repita
                       Escreval("")
                       Escreval("Digite a SEGUNDA NOTA do Aluno",numeroAlunos)
                       leia(notaDois)
                       
                       Se (notaDois < 0) OU (notaUm > 10) Ent�o
                          Escreval("")
                          Escreval("As notas devem ser um valor real entre 0 e 10!")
                       Fimse
                       
                    At� (notaDois >= 0) E (notaDois <= 10)
            Fimse
      At� (notaUm >= 0) E (notaUm <= 10) E (notaDois >= 0) E (notaDois <= 10)
      
      mediaNotas <- (notaUm + notaDois) / 2
      
      Escreval("")
      Escreval("---------------------------------")
      Escreval("| Aluno ",numeroAlunos)
      Escreval("| Nota 1: ",notaUm)
      Escreval("| Nota 2: ",notaDois)
      Escreval("| M�dia: ",mediaNotas)
      Escreval("---------------------------------")
      Escreval("")
      
      numeroAlunos <- numeroAlunos + 1
At� (numeroAlunos > 10)

Fimalgoritmo