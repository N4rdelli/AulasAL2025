Algoritmo "Compras"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   : Esse programa l� o valor de um produto e calcula o desconto com base na sua forma de pagamento.
// Autor(a)    : Anelize Nardelli
// Data atual  : 07/03/2025
Var
valorOriginal, desconto, valorFinal : real
pagamento : inteiro

Inicio


// Recebe os valores
Escreval("Informe o valor do produto:")
Leia(valorOriginal)
Escreval("")
Escreval("Qual a forma de pagamento?")
Escreval("Digite: 1 para cart�o")
Escreval("Digite: 2 para pix")
Escreval("Digite: 3 para dinheiro.")
Leia(pagamento)

// Calcula o valor do desconto e o valor final se a forma de pagamento escolhida for pix
Se (pagamento = "2") Ent�o
   desconto <- valorOriginal * 0.1
   valorFinal <- valorOriginal - desconto
Fimse

// Calcula o valor do desconto e o valor final se a forma de pagamento escolhida for dinheiro
Se (pagamento = "3") Ent�o
   desconto <- valorOriginal * 0.05
   valorFinal <- valorOriginal - desconto
Fimse

// Apresenta os valores
Escreval("")
Escreval("O valor original do produto � de R$",valorOriginal)
Escreval("O seu desconto foi de R$",desconto," e o novo valor a ser pago � de R$",valorFinal,"!")



Fimalgoritmo