Algoritmo "Campo Minado"
// Disciplina   : LP - L�gica de Programa��o
// Professor   : Aline Firmino
// Descri��o   : Faremos um jogo, o campo minado
// Autor(a)    : Ruan Ruales e Lyuwan Galdino
// Data atual  : 20/03/2023

//   Professora, meu campo minado s� roda a primeira vez que voc� abre, pedi ajuda pro Davi
//   e outros alunos mas mesmo assim n�o conseguimos resolver o porque ele s� roda uma �nica vez.

Var
   tabuleiro: vetor[1..8,1..8] de caracter
   linha, coluna, l, c, bomba, possi: inteiro

Inicio
   bomba := 1
   possi := 0
   // imprimir o tabuleiro

   escreval("                BEM VINDO JOGADOR, ESSE � O              ")
   escreval("                    CAMPO MINADO DO BG                  ")
   escreval("                                                         ")
   escreval(" 1  2  3  4  5  6  7  8 ")
   escreval("------------------------ ")

   para linha de 1 ate 8 faca
      para coluna de 1 ate 8 faca

         tabuleiro[linha,coluna] := "0"
         escreva ("|", tabuleiro[linha, coluna], " ")
      fimpara
      escreval ("|", linha, " ")
      escreval (" ")
   fimpara
   escreval(" ")

   // Fim imprimeTabuleiro

   repita

      escreval(" ")
      escreval("Digite um n�mero de 1 at� 8 ou aperte o ESC para sair")
      escreval("-----------------------------------------------------")
      escreval("Digite a linha")
      leia(l)
      escreval("E depois digite a coluna")
      leia(c)
      escreval(" ")
      //mostra a linha escolhida
      tabuleiro[l,c] := "1"

      se (l = 7) E (c = 4) entao
         bomba := 2
         tabuleiro[l,c] := "X"
      fimse

      se (l = 2) E (c = 8) entao
         bomba := 2
         tabuleiro[l,c] := "X"
      fimse

      se (l = 3) E (c = 4) entao
         bomba := 2
         tabuleiro[l,c] := "X"
      fimse

      se (l = 4) E (c = 1) entao
         bomba := 2
         tabuleiro[l,c] := "X"
      fimse

      se (l = 5) E (c = 6) entao
         bomba := 2
         tabuleiro[l,c] := "X"
      fimse

      se (l = 8) E (c = 4) entao
         bomba := 2
         tabuleiro[l,c] := "X"
      fimse

      se (l = 1) E (c = 8) entao
         bomba := 2
         tabuleiro[l,c] := "X"
      fimse

      se (l = 6) E (c = 2) entao
         bomba := 2
         tabuleiro[l,c] := "X"
      fimse

      se bomba = 1 entao
         possi := possi+1
      fimse



      para linha de 1 ate 8 faca
         para coluna de 1 ate 8 faca

            escreva (" ", tabuleiro[linha, coluna], " ")
         fimpara
         escreval ("|", linha, " ")
         escreval (" ")
      fimpara
      escreval("------------------------- ")
      escreva("  1  2  3  4  5  6  7  8")
      escreval(" ")
      escreval(" ")
      se  possi = 72 entao
         escreva (" PARAB�NS GANHOU")
         interrompa
      fimse
   ate (tabuleiro[linha,coluna] = bomba)


   se (tabuleiro[l,c] = bomba) entao
      escreval(" ")
      escreval(" ")
      escreval("Voc� acertou a bomba, tente novamente")
      escreval
   fimse
   
Fimalgoritmo