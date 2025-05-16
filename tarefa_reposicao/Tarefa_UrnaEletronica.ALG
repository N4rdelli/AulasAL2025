Algoritmo "Tarefa_UrnaEletronica"
// Disciplina   : Lógica de Programação e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descrição   :
// Autor(a)    : Anelize Nardelli
// Data atual  : 07/04/2025
Var
opcaoMenuPrincipal : inteiro
tituloEleitor : caractere
voto : inteiro
confirmacaoVoto : inteiro
totalVotos : inteiro

candidatoUm : caractere
votosCandidatoUm : inteiro
candidatoDois : caractere
votosCandidatoDois : inteiro
candidatoTres : caractere
votosCandidatoTres : inteiro

// Variáveis para apuração e porcentagens
opcaoMenuMesario : inteiro
porcentagemCandidatoUm, porcentagemCandidatoDois, porcentagemCandidatoTres : real

Inicio
// Determina os nomes dos candidatos
candidatoUm <- "Candidato A"
candidatoDois <- "Candidato B"
candidatoTres <- "Candidato C"

// Seta os contadores de votos para zero (isso permite a incrementação posteriormente)
votosCandidatoUm <- 0
votosCandidatoDois <- 0
votosCandidatoTres <- 0
totalVotos <- 0

// Inicia o sistema de fato. O usuário decide quando parar.
Repita
  Escreval("")
  Escreval("------------ Urna Eletrônica ------------")
  Escreval("Digite o que deseja fazer:")
  Escreval("1 - Votar")
  Escreval("2 - Acesso do Mesário")
  Escreval("0 - Sair")
  Leia(opcaoMenuPrincipal)

  // Age de acordo com a escolha do usuário
  Escolha opcaoMenuPrincipal
      //
      Caso 1
         Repita
            Escreval("")
            Escreva("Digite o seu título de eleitor: ")
            Leia(tituloEleitor)
            
            Se (tituloEleitor = "") Então
               Escreval("")
               Escreval("O campo não pode estra vazio!")
            Fimse
         Ate (tituloEleitor <> "")
          
         Escreval("")
         Escreval("------ Opções de Voto ------")
         Escreval("1 - ", candidatoUm)
         Escreval("2 - ", candidatoDois)
         Escreval("3 - ", candidatoTres)
         Escreva("Digite o número do seu candidato: ")
         Leia(voto)

         // Validação do voto
          Se (voto >= 1) E (voto <= 3) Então
              Repita
                 Escreval("")
                 Escreval("Você confirma o seu voto?")
                 Escreval("Se sim, digite 1. Se não, digite 2.")
                 Leia(confirmacaoVoto)
                 
                 Se (confirmacaoVoto < 1) ou  (confirmacaoVoto > 2) Então
                    Escreval("")
                    Escreval("Opção inválida. Tente novamente!")
              Até (confirmacaoVoto = 1) OU (confirmacaoVoto = 2)

              // Confirmação do voto
              Se (confirmacaoVoto = 1) Então
                  // Incrementa os votos do candidato escolhido
                  Escolha voto
                      Caso 1
                          votosCandidatoUm <- votosCandidatoUm + 1
                      Caso 2
                          votosCandidatoDois <- votosCandidatoDois + 1
                      Caso 3
                          votosCandidatoTres <- votosCandidatoTres + 1
                  FimEscolha
                  
                  totalVotos <- totalVotos + 1
                  
                  Escreval("")
                  Escreval("Voto registrado com sucesso!")
              Senão
                  Escreval("")
                  Escreval("Seu voto não foi confirmado.")
              FimSe
          Senão
              Escreval("")
              Escreval("Opção de voto inválida. Tente novamente!")
          FimSe

      Caso 2 // Opção para o acesso do mesário
          Escreval("")
          Escreval("--- Acesso do Mesário ---")
          Escreval("1 - Consultar Apuração")
          Escreval("0 - Voltar ao Menu Principal")
          Escreva("Digite a sua opção: ")
          Leia(opcaoMenuMesario)

          // Submenu para o mesário
          Escolha opcaoMenuMesario
              Caso 1 // Consultar a apuração
                  Se (totalVotos > 0) Então
                      // Calcula as porcentagens de votos para cada candidato
                      porcentagemCandidatoUm <- (votosCandidatoUm / totalVotos) * 100
                      porcentagemCandidatoDois <- (votosCandidatoDois / totalVotos) * 100
                      porcentagemCandidatoTres <- (votosCandidatoTres / totalVotos) * 100

                      Escreval("")
                      Escreval("--------- Apuração dos Votos ---------")
                      Escreval("Total de Votantes: ", totalVotos)
                      Escreval("")
                      Escreval(candidatoUm, ": ", votosCandidatoUm, " votos (", porcentagemCandidatoUm:4:2, "%)")
                      Escreval(candidatoDois, ": ", votosCandidatoDois, " votos (", porcentagemCandidatoDois:4:2, "%)")
                      Escreval(candidatoTres, ": ", votosCandidatoTres, " votos (", porcentagemCandidatoTres:4:2, "%)")
                      Escreval("------------------------------------")
                  Senão
                      Escreval("")
                      Escreval("Ainda não houveram votos registrados.")
                  FimSe

              Caso 0

              OutroCaso
                  Escreval("")
                  Escreval("Opção inválida para o mesário. Tente novamente!")
          FimEscolha

      Caso 0
          Escreval("")
          Escreval("Obrigado por utilizar a urna eletrônica!")

      OutroCaso
          Escreval("")
          Escreval("Opção inválida. Tente novamente!")
  FimEscolha
Até (opcaoMenuPrincipal = 0)
Fimalgoritmo