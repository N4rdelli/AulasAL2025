Algoritmo "Emprestimo"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Anelize Nardelli
// Data atual  : 07/03/2025
Var

idadeCliente, rendaMensal, valorEmprestimo, parcelaPermitida, seguro : real

Inicio

// Recebe a idade do usuário
Escreval("Olá! Informe a sua idade:")
Leia(idadeCliente)

// Verifica se o usuário é maior de idade
Se (idadeCliente < 18) Então
   Escreval("Você precisa ter mais de 18 anos para fazer um empréstimo!")
   Fimalgoritmo
Fimse

// Recebe a renda mensal do usuário
Escreval("")
Escreval("Informe a sua renda mensal:")
Leia(rendaMensal)

// Verifica se a renda é maior de 1500
Se (rendaMensal < 1500) Então
   Escreval("Renda insuficiente para um empréstimo")
   Fimalgoritmo
Fimse

// Recebe o valor desejado para o empréstimo
Escreval("")
Escreval("Informe o valor que você deseja emprestar:")
Leia(valorEmprestimo)

// Calcula os valores das parcelas
Se (rendaMensal >= 1500) E (rendaMensal < 2000) Então
     parcelaPermitida <- rendaMensal * 0.15
FimSe
Se (rendaMensal >= 2000) E (rendaMensal < 2500) Então
     parcelaPermitida <- rendaMensal * 0.20
FimSe
Se (rendaMensal >= 2000) Então
     parcelaPermitida <- rendaMensal * 0.30
FimSe

// Estrutura de decisão: vê se o empréstimo foi ou não foi aprovado
Se (parcelaPermitida > 0) E (valorEmprestimo <= parcelaPermitida) Então
     Escreval("")
     Escreval("Seu empréstimo foi aprovado!")
Senão
     Escreval("")
     Escreval("Seu empréstimo não foi aprovado!")
FimSe

// Calcula o valor do seguro com base na idade lida
Se (idadeCliente >= 18) E (idadeCliente <= 29) Então
   seguro <- parcelaPermitida * 0.05
Fimse

Se (idadeCliente >= 30) E (idadeCliente <= 44) Então
   seguro <- parcelaPermitida * 0.07
Fimse

Se (idadeCliente >= 45) E (idadeCliente <= 60) Então
   seguro <- parcelaPermitida * 0.10
Fimse

Se (idadeCliente >= 60) Então
   seguro <- parcelaPermitida * 0.15
Fimse

// Mostra o valor do seguro
Escreval("")
Escreval("Seu seguro é de R$",seguro)

Fimalgoritmo