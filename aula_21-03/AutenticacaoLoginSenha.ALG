Algoritmo "AutenticacaoLoginSenha"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   :
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

Para i de 1 at� 3 Fa�a
   Escreval("Digite seu login:")
   leia(loginDigitado)
   Escreval("")
   Escreval("Digite sua senha:")
   leia(senhaDigitada)

   Se (loginDigitado = loginCorreto) E (senhaDigitada = senhaCorreta) Ent�o
      Escreval("")
      Escreval("Ol� ",loginCorreto," !Bem-vinda(o)!")
      Fimalgoritmo
   Fimse
   
   Se (loginDigitado <> loginCorreto) OU (senhaDigitada = senhaCorreta) Ent�o
      Escreval("")
      Escreval("Tente novamente. N�mero de tentativas restantes: ",(3 - i))
      Escreval("")
   Fimse
   
   Se (i = 3) Ent�o
      Escreval("")
      Escreval("Limite de tentativas atingido.")
      Escreval("Usu�rio Bloqueado.")
   Fimse
Fimpara

Fimalgoritmo