Algoritmo "Emprestimo"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Anelize Nardelli
// Data atual  : 07/03/2025
Var

valorEmprestimo : real
rendaMensal : real
parcelaPermitida : real
permissao : caractere
idadeCliente : inteiro
seguro : real

Inicio

// Recebe os valores
Escreval("Olá! Informe o valor que você deseja emprestar:")
Leia(valorEmprestimo)
Escreval("")
Escreval("Agora informe o valor da sua renda mensal:")
Leia(rendaMensal)
Escreval("")
Escreval("Por último, informe a sua idade:")
Leia(idadeCliente)

// Calcula os valores das parcelas
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

// Estrutura de decisão: vê se o empréstimo foi ou não foi aprovado
Se (parcelaPermitida > 0) E (valorEmprestimo <= parcelaPermitida) Então
     permissao <- "foi"
Senão
     permissao <- "não foi"
FimSe

// Mostra se o empréstimo foi ou não aprovado
Escreval("")
Escreval("De acordo com a sua renda, seu empréstimo ",permissao," aprovado.")

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