Algoritmo "Emprestimo"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Anelize Nardelli
// Data atual  : 07/03/2025
Var

idadeCliente, rendaMensal, valorEmprestimo, parcelaPermitida, seguro : real

Inicio

// Recebe a idade do usu�rio
Escreval("Ol�! Informe a sua idade:")
Leia(idadeCliente)

// Verifica se o usu�rio � maior de idade
Se (idadeCliente < 18) Ent�o
   Escreval("Voc� precisa ter mais de 18 anos para fazer um empr�stimo!")
   Fimalgoritmo
Fimse

// Recebe a renda mensal do usu�rio
Escreval("")
Escreval("Informe a sua renda mensal:")
Leia(rendaMensal)

// Verifica se a renda � maior de 1500
Se (rendaMensal < 1500) Ent�o
   Escreval("Renda insuficiente para um empr�stimo")
   Fimalgoritmo
Fimse

// Recebe o valor desejado para o empr�stimo
Escreval("")
Escreval("Informe o valor que voc� deseja emprestar:")
Leia(valorEmprestimo)

// Calcula os valores das parcelas
Se (rendaMensal >= 1500) E (rendaMensal < 2000) Ent�o
     parcelaPermitida <- rendaMensal * 0.15
FimSe
Se (rendaMensal >= 2000) E (rendaMensal < 2500) Ent�o
     parcelaPermitida <- rendaMensal * 0.20
FimSe
Se (rendaMensal >= 2000) Ent�o
     parcelaPermitida <- rendaMensal * 0.30
FimSe

// Estrutura de decis�o: v� se o empr�stimo foi ou n�o foi aprovado
Se (parcelaPermitida > 0) E (valorEmprestimo <= parcelaPermitida) Ent�o
     Escreval("")
     Escreval("Seu empr�stimo foi aprovado!")
Sen�o
     Escreval("")
     Escreval("Seu empr�stimo n�o foi aprovado!")
FimSe

// Calcula o valor do seguro com base na idade lida
Se (idadeCliente >= 18) E (idadeCliente <= 29) Ent�o
   seguro <- parcelaPermitida * 0.05
Fimse

Se (idadeCliente >= 30) E (idadeCliente <= 44) Ent�o
   seguro <- parcelaPermitida * 0.07
Fimse

Se (idadeCliente >= 45) E (idadeCliente <= 60) Ent�o
   seguro <- parcelaPermitida * 0.10
Fimse

Se (idadeCliente >= 60) Ent�o
   seguro <- parcelaPermitida * 0.15
Fimse

// Mostra o valor do seguro
Escreval("")
Escreval("Seu seguro � de R$",seguro)

Fimalgoritmo