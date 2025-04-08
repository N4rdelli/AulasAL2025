Algoritmo "Tarefa_Transportadora"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   : Esse programa recebe os valores iniciais e finais dos kms de um hodometro e calcula a quantidade de kms rodados, a quantidade de litros diesel utilizados e o valor gasto nesse combustível. O algoritmo também mostra o valor total da viagem, acrescentando (se houver) valores pagos em pedágios.
// Autor(a)    : Anelize Nardelli
// Data atual  : 07/04/2025
Var
kmInicial, kmFinal, distancia : real
precoLitroDiesel, rendimentoLitroDiesel : real
litrosGastosDiesel, custoTotalDiesel : real
numeroPedagios, i, decisao : inteiro
custoPedagio, custoTotalPedagios, custoTotalViagem : real

Inicio
// Seta os valores pré-definidos pelo enunciado
precoLitroDiesel <- 4.40
rendimentoLitroDiesel <- 3.8

Escreval("Olá Gestor(a) da Transportadora Rodonaves!")

// Estabelece a execução do programa até o usuário decidir parar
Repita
   // Recebe o km inicial e verifica se ele é umm número maior ou igual a zero
   Repita
      Escreval("")
      Escreval("Digite o QUILÔMETRO INICIAL do hodômetro: ")
      Leia(kmInicial)

      Se (kmInicial < 0) Então
         Escreval("")
         Escreval("O quilômetro inicil não pode ser negativo. Tente novamente!")
      Fimse
   Até (kmInicial >=  0)

   Repita
      Escreval("")
      Escreval("Digite o QUILÔMETRO FINAL do hodômetro: ")
      Leia(kmFinal)

      Se (kmFinal < kmInicial) Então
         Escreval("")
         Escreval("O quilômetro final não pode ser menor que o quilômetro inicial. Tente novamente!")
      Fimse
   Até (kmFinal >= kmInicial)

   // Calcula a distância percorrida
   distancia <- kmFinal - kmInicial

   // Calcula a quantidade de litros de diesel gastos
   litrosGastosDiesel <- distancia / rendimentoLitroDiesel

   // Calcula o custo total do diesel
   custoTotalDiesel <- litrosGastosDiesel * precoLitroDiesel

   // Recebe o número de pedágios pagos e verifica se não é negativo
   Repita
      Escreval("")
      Escreva("Quantos pedágios foram pagos durante a viagem? ")
      Leia(numeroPedagios)

      Se (numeroPedagios < 0) Então
         Escreval("")
         Escreval("O número de pedágios pagos não pode ser negativo. Tente novamente!")
      Fimse
   Até (numeroPedagios >= 0)

   // Seta o custo total dos pedágios para zero (possibilita a incrementação)
   custoTotalPedagios <- 0

   // Recebe o valor de cada pedágio e soma no custo total
   Para i de 1 ate numeroPedagios Faça
      // Recebe o custo de um pedágio e verifica se ele não é negativo
      Repita
         Escreval("")
         Escreval("Digite o custo do ", i, "º pedágio: R$ ")
         Leia(custoPedagio)

         Se (custoPedagio < 0) Então
            Escreval("")
            Escreval("O custo do pedágio não pode ser negativo. Tente novamente!")
         Fimse
      Até (custoPedagio >= 0)

      // Faz a soma
      custoTotalPedagios <- custoTotalPedagios + custoPedagio
   FimPara

   // Calcula o custo total da viagem
   custoTotalViagem <- custoTotalDiesel + custoTotalPedagios

   // Mostra os valores finais
   Escreval("")
   Escreval("--------- Resultados da Viagem ---------")
   Escreval("Distância percorrida: ", distancia:5:2, " km")
   Escreval("Litros de diesel gastos: ", litrosGastosDiesel:5:2, " litros")
   Escreval("Custo total com diesel: R$ ", custoTotalDiesel:5:2)
   Escreval("Custo total com pedágios: R$ ", custoTotalPedagios:5:2)
   Escreval("Custo TOTAL da viagem: R$ ", custoTotalViagem:5:2)
   Escreval("----------------------------------------")

   // Recebe a escolha de continuar ou parar e verifica
   Repita
      Escreval("")
      Escreval("Deseja calcular mais alguma viagem? Digite 1 para SIM e 2 para NÃO")
      Leia(decisao)

      Se (decisao < 1) ou (decisao > 2) Então
         Escreval("")
         Escreval("Opção inválida. Tente novamente!")
      Fimse
   Até (decisao = 1) OU (decisao = 2)
Até (decisao = 2)

Escreval("")
Escreval("Obrigada por executar!")

Fimalgoritmo