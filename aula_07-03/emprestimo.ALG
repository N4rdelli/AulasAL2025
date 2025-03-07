Algoritmo "Emprestimo"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Anelize Nardelli
// Data atual  : 07/03/2025
Var

emprestimoDesejado : real
rendaMensal : real
parcelaPermitida : real
permissao : caractere
idadeCliente : inteiro

Inicio

Escreval("Olá! Em qual valor de empréstimo você está interessado?")
Escreval("Informe o valor que você deseja emprestar:")
Leia(emprestimoDesejado)

Escreval("")
Escreval("Interessante. Agora informe o valor da sua renda mensal:")
Leia(rendaMensal)

Se (rendaMensal < 1500) Então
     parcelaPermitida <- 0
FimSe

Se (rendaMensal >= 1500) E (rendaMensal < 2000) Então
     parcelaPermitida <- rendaMensal * 0.15
FimSe

Se (rendaMensal >= 2000) E (rendaMensal < 2500) Então
     parcelaPermitida <- rendaMensal * 0.20
FimSe

Se (rendaMensal >= 2000) Então
     parcelaPermitida <- rendaMensal * 0.30
FimSe

Se (parcelaPermitida > 0) E (emprestimoDesejado <= parcelaPermitida) Então
     permissao <- "foi"
Senão
     permissao <- "não foi"
FimSe

Escreval("")
Escreval("De acordo com a sua renda, seu empréstimo ",permissao," aprovado.")
Escreval("")
Escreval("O valor do seu seguro depende da sua idade. Informe a sua idade:")
Leia(idadeCliente)

Se (idadeCliente >= 18) E (idadeCliente <= 29) Então
   seguro <- parcelaPermitida * 0.05
Fimse

Se (idadeCliente >= 30) E (idadeCliente <= 44) Então
   seguro <- parcelaPermitida * 0.05
Fimse

Se (idadeCliente >= 45) E (idadeCliente <= 60) Então
   seguro <- parcelaPermitida * 0.05
Fimse

Se (idadeCliente >= 60) Então
   seguro <- parcelaPermitida * 0.05
Fimse


Fimalgoritmo