Algoritmo "AutenticacaoLoginSenha"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   :
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/03/2025
Var
loginCorreto, loginDigitado, senhaCorreta, senhaDigitada : caractere
i : inteiro

Inicio

loginCorreto <- "N4rdelli"
senhaCorreta <- "1234Nardelli"

Escreval("Informe suas credenciais para acessar o sistema:")
Escreval("")

Para i de 1 até 3 Faça
   Escreval("Digite seu login:")
   leia(loginDigitado)
   Escreval("")
   Escreval("Digite sua senha:")
   leia(senhaDigitada)

   Se (loginDigitado = loginCorreto) E (senhaDigitada = senhaCorreta) Então
      Escreval("")
      Escreval("Olá ",loginCorreto," !Bem-vinda(o)!")
      Fimalgoritmo
   Fimse
   
   Se (loginDigitado <> loginCorreto) OU (senhaDigitada = senhaCorreta) Então
      Escreval("")
      Escreval("Tente novamente. Número de tentativas restantes: ",(3 - i))
      Escreval("")
   Fimse
   
   Se (i = 3) Então
      Escreval("")
      Escreval("Limite de tentativas atingido.")
      Escreval("Usuário Bloqueado.")
   Fimse
Fimpara

Fimalgoritmo