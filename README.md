# Campo Minado 💣🎮
Jogo: Campo Minado 
Desenvolvido por: Ruan Ruales de Carvalho e Lyuwan Galdino
3º ano do curso Jogos Digitais 
Projeto desenvolvido em C# e em Português estruturado 
Tecnologias utilizadas: C# Console, VisualG;

# Descrição e Regras: 📓

•	O objetivo é não escolher nenhuma posição de bomba, descobrir todos os espaços livres presentes em um mapa 8 por 8. Se aparecer “1” é um espaço livre, sem bombas, o jogo continua.
•	O jogador deve escolher uma linha e uma coluna de acordo com a tabela do jogo.
•	A vitória ocorre quando não se encontra nehuma bomba, só espaços vazios. Assim que o jogador conseguir esse onjetivo é apresentado uma mensagem de vitória na tela.
•	É selecionado uma casa por vez para ser revelada.
•	Bombas = “X”
•	Espaços vazios = “1”.
•	Posição não revelada = “0”

# Análise do projeto: 👨‍💻
Criado com dois vetores formando uma matriz de 8 posições cada uma, nós temos linha, coluna, bomba e a "possi", que é a possibilidade de acertos e erros no tabuleiro. Foi usado dois laços de repetição para mostrar o tabuleiro na tela. Todos espaços inicialmente possuem “0”, representando que o jogador não mexeu ali. Esse valor muda para "1", caso o jogador acerte a bomba a posição do vetor será mudada para "X". As bombas foram pré-determinadas, no visualg usando condicional e no visual studio, as bombas foram declaradas usando um método. O tabuleiro de jogo é mostrado toda vez que o jogador joga, com todas as alterações e jogadas anteriores, utilizando um (do/while)/(repita), dessa forma, até cair na condição do jogador vencer ou perder. No C# temos a inclusão de uma quantidade de erros permitidos, pois o jogador possuí 3 "vidas" e também temos bombas colocadas de forma aleatória no mapa.
