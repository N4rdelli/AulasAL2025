Algoritmo "Tarefa_Transportadora"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   : Esse programa recebe os valores iniciais e finais dos kms de um hodometro e calcula a quantidade de kms rodados, a quantidade de litros diesel utilizados e o valor gasto nesse combust�vel. O algoritmo tamb�m mostra o valor total da viagem, acrescentando (se houver) valores pagos em ped�gios.
// Autor(a)    : Anelize Nardelli
// Data atual  : 07/04/2025
Var
kmInicial, kmFinal, distancia : real
precoLitroDiesel, rendimentoLitroDiesel : real
litrosGastosDiesel, custoTotalDiesel : real
numeroPedagios, i, decisao : inteiro
custoPedagio, custoTotalPedagios, custoTotalViagem : real

Inicio
// Seta os valores pr�-definidos pelo enunciado
precoLitroDiesel <- 4.40
rendimentoLitroDiesel <- 3.8

Escreval("Ol� Gestor(a) da Transportadora Rodonaves!")

// Estabelece a execu��o do programa at� o usu�rio decidir parar
Repita
   // Recebe o km inicial e verifica se ele � umm n�mero maior ou igual a zero
   Repita
      Escreval("")
      Escreval("Digite o QUIL�METRO INICIAL do hod�metro: ")
      Leia(kmInicial)

      Se (kmInicial < 0) Ent�o
         Escreval("")
         Escreval("O quil�metro inicil n�o pode ser negativo. Tente novamente!")
      Fimse
   At� (kmInicial >=  0)

   Repita
      Escreval("")
      Escreval("Digite o QUIL�METRO FINAL do hod�metro: ")
      Leia(kmFinal)

      Se (kmFinal < kmInicial) Ent�o
         Escreval("")
         Escreval("O quil�metro final n�o pode ser menor que o quil�metro inicial. Tente novamente!")
      Fimse
   At� (kmFinal >= kmInicial)

   // Calcula a dist�ncia percorrida
   distancia <- kmFinal - kmInicial

   // Calcula a quantidade de litros de diesel gastos
   litrosGastosDiesel <- distancia / rendimentoLitroDiesel

   // Calcula o custo total do diesel
   custoTotalDiesel <- litrosGastosDiesel * precoLitroDiesel

   // Recebe o n�mero de ped�gios pagos e verifica se n�o � negativo
   Repita
      Escreval("")
      Escreva("Quantos ped�gios foram pagos durante a viagem? ")
      Leia(numeroPedagios)

      Se (numeroPedagios < 0) Ent�o
         Escreval("")
         Escreval("O n�mero de ped�gios pagos n�o pode ser negativo. Tente novamente!")
      Fimse
   At� (numeroPedagios >= 0)

   // Seta o custo total dos ped�gios para zero (possibilita a incrementa��o)
   custoTotalPedagios <- 0

   // Recebe o valor de cada ped�gio e soma no custo total
   Para i de 1 ate numeroPedagios Fa�a
      // Recebe o custo de um ped�gio e verifica se ele n�o � negativo
      Repita
         Escreval("")
         Escreval("Digite o custo do ", i, "� ped�gio: R$ ")
         Leia(custoPedagio)

         Se (custoPedagio < 0) Ent�o
            Escreval("")
            Escreval("O custo do ped�gio n�o pode ser negativo. Tente novamente!")
         Fimse
      At� (custoPedagio >= 0)

      // Faz a soma
      custoTotalPedagios <- custoTotalPedagios + custoPedagio
   FimPara

   // Calcula o custo total da viagem
   custoTotalViagem <- custoTotalDiesel + custoTotalPedagios

   // Mostra os valores finais
   Escreval("")
   Escreval("--------- Resultados da Viagem ---------")
   Escreval("Dist�ncia percorrida: ", distancia:5:2, " km")
   Escreval("Litros de diesel gastos: ", litrosGastosDiesel:5:2, " litros")
   Escreval("Custo total com diesel: R$ ", custoTotalDiesel:5:2)
   Escreval("Custo total com ped�gios: R$ ", custoTotalPedagios:5:2)
   Escreval("Custo TOTAL da viagem: R$ ", custoTotalViagem:5:2)
   Escreval("----------------------------------------")

   // Recebe a escolha de continuar ou parar e verifica
   Repita
      Escreval("")
      Escreval("Deseja calcular mais alguma viagem? Digite 1 para SIM e 2 para N�O")
      Leia(decisao)

      Se (decisao < 1) ou (decisao > 2) Ent�o
         Escreval("")
         Escreval("Op��o inv�lida. Tente novamente!")
      Fimse
   At� (decisao = 1) OU (decisao = 2)
At� (decisao = 2)

Escreval("")
Escreval("Obrigada por executar!")

Fimalgoritmo