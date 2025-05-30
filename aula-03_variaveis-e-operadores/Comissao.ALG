Algoritmo "semnome"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Anelize Nardelli
// Data atual  : 28/02/2025
Var
  qtdMussarela : real
  qtdPresunto : real
  qtdPeitoDePeru : real
  qtdMortadela : real

  comissaoMussarela : real
  comissaoPresunto : real
  comissaoPeitoDePeru : real
  comissaoMortadela : real

  vendasMussarela : real
  vendasPresunto : real
  vendasPeitoDePeru : real
  vendasMortadela : real
  
  totalQtd : real
  totalVendas : real
  totalComissao : real
  
Inicio
  Escreval("Quantos quilogramas de Mussarela foi vendido? Digite:")
  Leia(qtdMussarela)
  vendasMussarela <- qtdMussarela * 56.20
  comissaoMussarela <- vendasMussarela * 0.03
  Escreval("O quilograma da Mussarela está a R$56,20 e você ganha 3% de comissão.")
  Escreval("Você vendeu ",qtdMussarela,"Kgs de Mussarela, um total de R$",vendasMussarela," e ganhou R$",comissaoMussarela," de comissão.")
  Escreval("")

  Escreval("Quantos quilogramas de Presunto foi vendido? Digite:")
  Leia(qtdPresunto)
  vendasPresunto <- qtdPresunto * 78.20
  comissaoPresunto <- vendasPresunto * 0.05
  Escreval("O quilograma do Presunto está a R$78,20 e você ganha 5% de comissão.")
  Escreval("Você vendeu ",qtdPresunto,"Kgs de Presunto, um total de R$",vendasPresunto," e ganhou R$",comissaoPresunto," de comissão.")
  Escreval("")
  
  Escreval("Quantos quilogramas de Peito de Peru foi vendido? Digite:")
  Leia(qtdPeitoDePeru)
  vendasPeitoDePeru <- qtdPeitoDePeru * 89.60
  comissaoPeitoDePeru <- vendasPeitoDePeru * 0.10
  Escreval("O quilograma do Peito de Peru está a R$89,60 e você ganha 10% de comissão.")
  Escreval("Você vendeu ",qtdPeitoDePeru,"Kgs de Peito de Peru, um total de R$",vendasPeitoDePeru," e ganhou R$",comissaoPeitoDePeru," de comissão.")
  Escreval("")
  
  Escreval("Quantos quilogramas de Mortadela foi vendido? Digite:")
  Leia(qtdMortadela)
  vendasMortadela <- qtdMortadela * 25.90
  comissaoMortadela <- vendasMortadela * 0.08
  Escreval("O quilograma da Mortaderla está a R$25,90 e você ganha 8% de comissão.")
  Escreval("Você vendeu ",qtdMortadela,"Kgs de Mortadela, um total de R$",vendasMortadela," e ganhou R$",comissaoMortadela," de comissão.")
  Escreval("")

  totalQtd <- qtdMussarela + qtdPresunto + qtdPeitoDePeru + qtdMortadela
  totalVendas <- vendasMussarela + vendasPresunto + vendasPeitoDePeru + vendasMortadela
  totalComissao <- comissaoMussarela + comissaoPresunto + comissaoPeitoDePeru + comissaoMortadela
  Escreval("--------------------------------------------------------------------------------")
  Escreval("Parabéns! Hoje você vendeu um total de",totalQtd,"kgs de produtos, o que resultou em um total de R$",totalVendas," em vendas!")
  Escreval("A sua comissão de hoje foi de R$",totalComissao)
Fimalgoritmo