Algoritmo "Compras"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   : Esse programa lê o valor de um produto e calcula o desconto com base na sua forma de pagamento.
// Autor(a)    : Anelize Nardelli
// Data atual  : 07/03/2025
Var
valorOriginal, desconto, valorFinal : real
pagamento : caractere

Inicio

Escreval("Informe o valor do produto:")
Leia(valorOriginal)

Escreval("")
Escreval("Qual a forma de pagamento?")
Escreval("Digite: 1 para cartão")
Escreval("Digite: 2 para pix")
Escreval("Digite: 3 para dinheiro.")
Leia(pagamento)

Se (pagamento = "2") Então
   desconto <- valorOriginal * 0.1
   valorFinal <- valorOriginal - desconto
Fimse

Se (pagamento = "3") Então
   desconto <- valorOriginal * 0.05
   valorFinal <- valorOriginal - desconto
Fimse

Escreval("")
Escreval("O valor original do produto é de R$",valorOriginal)
Escreval("O seu desconto foi de R$",desconto," e o novo valor a ser pago é de R$",valorFinal,"!")



Fimalgoritmo