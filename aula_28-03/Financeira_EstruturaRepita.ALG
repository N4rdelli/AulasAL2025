Algoritmo "Financeira_EstruturaRepita"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   : Esse c�digo � uma terceira vers�o do exerc�cio da financeira, agora utilizando a estrutura repita para possibilitar que o usu�rio navegue no menu automatizado.
// Autor(a)    : Anelize Nardelli
// Data atual  : 28/03/2025
Var
numeroMenu, desejaContinuar : inteiro
idadeCliente, rendaMensal, valorEmprestimo, parcelaPermitida, seguro : real

Inicio
Escreval("Ol�! Seja bem vindo ao sistema da Financeira Excesso!")
Repita
      Repita
         Escreval("")
         Escreval("O que deseja fazer? Digite:")
         Escreval("1 - Quero ler os requesitos para contratar um empr�stimo")
         Escreval("2 - J� sei os requesitos. Quero fazer um empr�stimo.")
         Escreval("3 - Preciso de mais informa��es de contato")
         Leia(numeroMenu)
      At� (numeroMenu = 1) OU (numeroMenu = 2) OU (numeroMenu = 3)

      Escolha numeroMenu
        Caso 1
             Escreval("-----------------------------------------------------------------------------------------------------------------")
             Escreval("Ok! Aqui est�o os requisitos para contratar um empr�stimo:")
             Escreval("")
             Escreval("Sua renda precisa ser superior a R$1500,00 mensais.")
             Escreval("Caso sua renda seja menor que R$2000,00 por m�s, a parcela m�ximo que pode ser contratada � de 15% desse sal�rio.")
             Escreval("Caso sua renda seja menor que R$2500,00 por m�s, a parcela m�ximo que pode ser contratada � de 20% desse sal�rio.")
             Escreval("Caso sua renda seja maior que R$2000,00 por m�s, a parcela m�ximo que pode ser contratada � de 30% desse sal�rio.")
             Escreval("")
             Escreval("Al�m disso, seu seguro depende da sua idade!")
             Escreval("Entre 18 e 29 anos, o seguro � de 5% no valor da parcela.")
             Escreval("Entre 30 e 44 anos, o seguro � de 7% no valor da parcela.")
             Escreval("Entre 45 e 60 anos, o seguro � de 10% no valor da parcela.")
             Escreval("Mais do que 60 anos, o seguro � de 15% no valor da parcela.")
             Escreval("-----------------------------------------------------------------------------------------------------------------")
        Caso 2
             // Recebe a idade do usu�rio
             Escreval("")
             Escreval("Ok! Primeiramente, informe a sua idade:")
             Leia(idadeCliente)

             // Verifica se o usu�rio � maior de idade
             Se (idadeCliente < 18) Ent�o
                Escreval("Voc� precisa ter mais de 18 anos para fazer um empr�stimo!")
                Fimalgoritmo
             Fimse

             // Recebe a renda mensal do usu�rio
             Escreval("")
             Escreval("Agora informe a sua renda mensal:")
             Leia(rendaMensal)

             // Verifica se a renda � maior de 1500
             Se (rendaMensal < 1500) Ent�o
                Escreval("Renda insuficiente para um empr�stimo.")
                Fimalgoritmo
             Fimse

             // Recebe o valor desejado para o empr�stimo
             Escreval("")
             Escreval("Ok. Agora informe o valor que voc� deseja emprestar:")
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
                  Escreval("-----------------------------------------")
                  Escreval("Seu empr�stimo foi aprovado!")
             Sen�o
                  Escreval("")
                  Escreval("-----------------------------------------")
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
             Escreval("Seu seguro � de R$",seguro)
             Escreval("-----------------------------------------")
        Caso 3
             Escreval("")
             Escreval("Entendido. Aqui est�o mais informa��es de contato �teis para voc�:")
             Escreval("Fulano da Silva, supervisor do Departamento de Transa��es: fulanodasilvatransacoes@email.financeira.com")
             Escreval("Beltrano Campanha Caso, gerente da Financeira Excesso: campanhacasobeltrano@email.financeira.com")
             Escreval("Heitor de Campos Prado, filho do dono: heitordecamposprado@email.financeira.com")
      Fimescolha
      
      Repita
         Escreval("")
         Escreval("Deseja fazer mais alguma coisa?")
         Escreval("Digite 1 para Continuar e 2 para Finalizar")
         Leia(desejaContinuar)
      At� (desejaContinuar = 1) OU (desejaContinuar = 2)
At� (desejaContinuar = 2)

Fimalgoritmo