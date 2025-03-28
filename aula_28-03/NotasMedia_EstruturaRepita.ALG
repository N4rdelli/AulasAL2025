Algoritmo "NotasMedia"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   : Esse programa recebe notas de alunos e calcula a média entre elas. Ele também valida se as notas estão entre 0 e 10.
// Autor(a)    : Anelize Nardelli
// Data atual  : 28/03/2025
Var
numeroAlunos : inteiro
notaUm, notaDois, mediaNotas : real

Inicio

numeroAlunos <- 1

Escreval("Olá professor!")

Repita
      
      Repita
            Escreval("Digite a PRIMEIRA NOTA do Aluno",numeroAlunos)
            leia(notaUm)
            
            Se (notaUm < 0) OU (notaUm > 10) Então
               Escreval("")
               Escreval("As notas devem ser um valor real entre 0 e 10!")
               Senão
                    Repita
                       Escreval("")
                       Escreval("Digite a SEGUNDA NOTA do Aluno",numeroAlunos)
                       leia(notaDois)
                       
                       Se (notaDois < 0) OU (notaUm > 10) Então
                          Escreval("")
                          Escreval("As notas devem ser um valor real entre 0 e 10!")
                       Fimse
                       
                    Até (notaDois >= 0) E (notaDois <= 10)
            Fimse
      Até (notaUm >= 0) E (notaUm <= 10) E (notaDois >= 0) E (notaDois <= 10)
      
      mediaNotas <- (notaUm + notaDois) / 2
      
      Escreval("")
      Escreval("---------------------------------")
      Escreval("| Aluno ",numeroAlunos)
      Escreval("| Nota 1: ",notaUm)
      Escreval("| Nota 2: ",notaDois)
      Escreval("| Média: ",mediaNotas)
      Escreval("---------------------------------")
      Escreval("")
      
      numeroAlunos <- numeroAlunos + 1
Até (numeroAlunos > 10)

Fimalgoritmo