Algoritmo "Tarefa_UrnaEletronica"
// Disciplina   : L�gica de Programa��o e Algoritmos
// Professor   : MSc. Tiago Antonio da Silva 
// Descri��o   :
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

// Vari�veis para apura��o e porcentagens
opcaoMenuMesario : inteiro
porcentagemCandidatoUm, porcentagemCandidatoDois, porcentagemCandidatoTres : real

Inicio
// Determina os nomes dos candidatos
candidatoUm <- "Candidato A"
candidatoDois <- "Candidato B"
candidatoTres <- "Candidato C"

// Seta os contadores de votos para zero (isso permite a incrementa��o posteriormente)
votosCandidatoUm <- 0
votosCandidatoDois <- 0
votosCandidatoTres <- 0
totalVotos <- 0

// Inicia o sistema de fato. O usu�rio decide quando parar.
Repita
  Escreval("")
  Escreval("------------ Urna Eletr�nica ------------")
  Escreval("Digite o que deseja fazer:")
  Escreval("1 - Votar")
  Escreval("2 - Acesso do Mes�rio")
  Escreval("0 - Sair")
  Leia(opcaoMenuPrincipal)

  // Age de acordo com a escolha do usu�rio
  Escolha opcaoMenuPrincipal
      //
      Caso 1
         Repita
            Escreval("")
            Escreva("Digite o seu t�tulo de eleitor: ")
            Leia(tituloEleitor)
            
            Se (tituloEleitor = "") Ent�o
               Escreval("")
               Escreval("O campo n�o pode estra vazio!")
            Fimse
         Ate (tituloEleitor <> "")
          
         Escreval("")
         Escreval("------ Op��es de Voto ------")
         Escreval("1 - ", candidatoUm)
         Escreval("2 - ", candidatoDois)
         Escreval("3 - ", candidatoTres)
         Escreva("Digite o n�mero do seu candidato: ")
         Leia(voto)

         // Valida��o do voto
          Se (voto >= 1) E (voto <= 3) Ent�o
              Repita
                 Escreval("")
                 Escreval("Voc� confirma o seu voto?")
                 Escreval("Se sim, digite 1. Se n�o, digite 2.")
                 Leia(confirmacaoVoto)
                 
                 Se (confirmacaoVoto < 1) ou  (confirmacaoVoto > 2) Ent�o
                    Escreval("")
                    Escreval("Op��o inv�lida. Tente novamente!")
              At� (confirmacaoVoto = 1) OU (confirmacaoVoto = 2)

              // Confirma��o do voto
              Se (confirmacaoVoto = 1) Ent�o
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
              Sen�o
                  Escreval("")
                  Escreval("Seu voto n�o foi confirmado.")
              FimSe
          Sen�o
              Escreval("")
              Escreval("Op��o de voto inv�lida. Tente novamente!")
          FimSe

      Caso 2 // Op��o para o acesso do mes�rio
          Escreval("")
          Escreval("--- Acesso do Mes�rio ---")
          Escreval("1 - Consultar Apura��o")
          Escreval("0 - Voltar ao Menu Principal")
          Escreva("Digite a sua op��o: ")
          Leia(opcaoMenuMesario)

          // Submenu para o mes�rio
          Escolha opcaoMenuMesario
              Caso 1 // Consultar a apura��o
                  Se (totalVotos > 0) Ent�o
                      // Calcula as porcentagens de votos para cada candidato
                      porcentagemCandidatoUm <- (votosCandidatoUm / totalVotos) * 100
                      porcentagemCandidatoDois <- (votosCandidatoDois / totalVotos) * 100
                      porcentagemCandidatoTres <- (votosCandidatoTres / totalVotos) * 100

                      Escreval("")
                      Escreval("--------- Apura��o dos Votos ---------")
                      Escreval("Total de Votantes: ", totalVotos)
                      Escreval("")
                      Escreval(candidatoUm, ": ", votosCandidatoUm, " votos (", porcentagemCandidatoUm:4:2, "%)")
                      Escreval(candidatoDois, ": ", votosCandidatoDois, " votos (", porcentagemCandidatoDois:4:2, "%)")
                      Escreval(candidatoTres, ": ", votosCandidatoTres, " votos (", porcentagemCandidatoTres:4:2, "%)")
                      Escreval("------------------------------------")
                  Sen�o
                      Escreval("")
                      Escreval("Ainda n�o houveram votos registrados.")
                  FimSe

              Caso 0

              OutroCaso
                  Escreval("")
                  Escreval("Op��o inv�lida para o mes�rio. Tente novamente!")
          FimEscolha

      Caso 0
          Escreval("")
          Escreval("Obrigado por utilizar a urna eletr�nica!")

      OutroCaso
          Escreval("")
          Escreval("Op��o inv�lida. Tente novamente!")
  FimEscolha
At� (opcaoMenuPrincipal = 0)
Fimalgoritmo