Algoritmo "Financeira_EstruturaRepita"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   : Esse código é uma terceira versão do exercício da financeira, agora utilizando a estrutura repita para possibilitar que o usuário navegue no menu automatizado.
// Autor(a)    : Anelize Nardelli
// Data atual  : 28/03/2025
Var
numeroMenu, desejaContinuar : inteiro
idadeCliente, rendaMensal, valorEmprestimo, parcelaPermitida, seguro : real

Inicio
Escreval("Olá! Seja bem vindo ao sistema da Financeira Excesso!")
Repita
      Repita
         Escreval("")
         Escreval("O que deseja fazer? Digite:")
         Escreval("1 - Quero ler os requesitos para contratar um empréstimo")
         Escreval("2 - Já sei os requesitos. Quero fazer um empréstimo.")
         Escreval("3 - Preciso de mais informações de contato")
         Leia(numeroMenu)
      Até (numeroMenu = 1) OU (numeroMenu = 2) OU (numeroMenu = 3)

      Escolha numeroMenu
        Caso 1
             Escreval("-----------------------------------------------------------------------------------------------------------------")
             Escreval("Ok! Aqui estão os requisitos para contratar um empréstimo:")
             Escreval("")
             Escreval("Sua renda precisa ser superior a R$1500,00 mensais.")
             Escreval("Caso sua renda seja menor que R$2000,00 por mês, a parcela máximo que pode ser contratada é de 15% desse salário.")
             Escreval("Caso sua renda seja menor que R$2500,00 por mês, a parcela máximo que pode ser contratada é de 20% desse salário.")
             Escreval("Caso sua renda seja maior que R$2000,00 por mês, a parcela máximo que pode ser contratada é de 30% desse salário.")
             Escreval("")
             Escreval("Além disso, seu seguro depende da sua idade!")
             Escreval("Entre 18 e 29 anos, o seguro é de 5% no valor da parcela.")
             Escreval("Entre 30 e 44 anos, o seguro é de 7% no valor da parcela.")
             Escreval("Entre 45 e 60 anos, o seguro é de 10% no valor da parcela.")
             Escreval("Mais do que 60 anos, o seguro é de 15% no valor da parcela.")
             Escreval("-----------------------------------------------------------------------------------------------------------------")
        Caso 2
             // Recebe a idade do usuário
             Escreval("")
             Escreval("Ok! Primeiramente, informe a sua idade:")
             Leia(idadeCliente)

             // Verifica se o usuário é maior de idade
             Se (idadeCliente < 18) Então
                Escreval("Você precisa ter mais de 18 anos para fazer um empréstimo!")
                Fimalgoritmo
             Fimse

             // Recebe a renda mensal do usuário
             Escreval("")
             Escreval("Agora informe a sua renda mensal:")
             Leia(rendaMensal)

             // Verifica se a renda é maior de 1500
             Se (rendaMensal < 1500) Então
                Escreval("Renda insuficiente para um empréstimo.")
                Fimalgoritmo
             Fimse

             // Recebe o valor desejado para o empréstimo
             Escreval("")
             Escreval("Ok. Agora informe o valor que você deseja emprestar:")
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
                  Escreval("-----------------------------------------")
                  Escreval("Seu empréstimo foi aprovado!")
             Senão
                  Escreval("")
                  Escreval("-----------------------------------------")
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
             Escreval("Seu seguro é de R$",seguro)
             Escreval("-----------------------------------------")
        Caso 3
             Escreval("")
             Escreval("Entendido. Aqui estão mais informações de contato úteis para você:")
             Escreval("Fulano da Silva, supervisor do Departamento de Transações: fulanodasilvatransacoes@email.financeira.com")
             Escreval("Beltrano Campanha Caso, gerente da Financeira Excesso: campanhacasobeltrano@email.financeira.com")
             Escreval("Heitor de Campos Prado, filho do dono: heitordecamposprado@email.financeira.com")
      Fimescolha
      
      Repita
         Escreval("")
         Escreval("Deseja fazer mais alguma coisa?")
         Escreval("Digite 1 para Continuar e 2 para Finalizar")
         Leia(desejaContinuar)
      Até (desejaContinuar = 1) OU (desejaContinuar = 2)
Até (desejaContinuar = 2)

Fimalgoritmo