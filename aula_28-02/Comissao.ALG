Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
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
  Escreval("O quilograma da Mussarela est� a R$56,20 e voc� ganha 3% de comiss�o.")
  Escreval("Voc� vendeu ",qtdMussarela,"Kgs de Mussarela, um total de R$",vendasMussarela," e ganhou R$",comissaoMussarela," de comiss�o.")
  Escreval("")

  Escreval("Quantos quilogramas de Presunto foi vendido? Digite:")
  Leia(qtdPresunto)
  vendasPresunto <- qtdPresunto * 78.20
  comissaoPresunto <- vendasPresunto * 0.05
  Escreval("O quilograma do Presunto est� a R$78,20 e voc� ganha 5% de comiss�o.")
  Escreval("Voc� vendeu ",qtdPresunto,"Kgs de Presunto, um total de R$",vendasPresunto," e ganhou R$",comissaoPresunto," de comiss�o.")
  Escreval("")
  
  Escreval("Quantos quilogramas de Peito de Peru foi vendido? Digite:")
  Leia(qtdPeitoDePeru)
  vendasPeitoDePeru <- qtdPeitoDePeru * 89.60
  comissaoPeitoDePeru <- vendasPeitoDePeru * 0.10
  Escreval("O quilograma do Peito de Peru est� a R$89,60 e voc� ganha 10% de comiss�o.")
  Escreval("Voc� vendeu ",qtdPeitoDePeru,"Kgs de Peito de Peru, um total de R$",vendasPeitoDePeru," e ganhou R$",comissaoPeitoDePeru," de comiss�o.")
  Escreval("")
  
  Escreval("Quantos quilogramas de Mortadela foi vendido? Digite:")
  Leia(qtdMortadela)
  vendasMortadela <- qtdMortadela * 25.90
  comissaoMortadela <- vendasMortadela * 0.08
  Escreval("O quilograma da Mortaderla est� a R$25,90 e voc� ganha 8% de comiss�o.")
  Escreval("Voc� vendeu ",qtdMortadela,"Kgs de Mortadela, um total de R$",vendasMortadela," e ganhou R$",comissaoMortadela," de comiss�o.")
  Escreval("")

  totalQtd <- qtdMussarela + qtdPresunto + qtdPeitoDePeru + qtdMortadela
  totalVendas <- vendasMussarela + vendasPresunto + vendasPeitoDePeru + vendasMortadela
  totalComissao <- comissaoMussarela + comissaoPresunto + comissaoPeitoDePeru + comissaoMortadela
  Escreval("--------------------------------------------------------------------------------")
  Escreval("Parab�ns! Hoje voc� vendeu um total de",totalQtd,"kgs de produtos, o que resultou em um total de R$",totalVendas," em vendas!")
  Escreval("A sua comiss�o de hoje foi de R$",totalComissao)
Fimalgoritmo