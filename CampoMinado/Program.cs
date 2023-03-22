using System;

namespace CampoMinado
{
    class Program
    {
        const int TAMX = 8;
        const int TAMY = 8;

        static void Main(string[] args)
        {
            var campo = new string[TAMX, TAMY];
            var campoView = new string[TAMX, TAMY];
            int chances = 3;
            int x, y;

            Console.Clear();
            Console.Write("         SEJA BEM VINDO JOGADOR ESSE É O           ");
            Console.WriteLine("\n");
            Console.Write(" --------------CAMPO MINADO DO BG----------------");
            Console.WriteLine("\n");

            PlantBomb(campo, campoView);
            ImprimeCampo(campoView);


            while (chances > 0)
            {
            
                Console.Write("Informe a coordenada X: ");
                x = Convert.ToInt32(Console.ReadLine());

                Console.Write("Informe a coordenada Y: ");
                y = Convert.ToInt32(Console.ReadLine());

                Console.Clear();

                chances = CheckBomb(x, y, campo, campoView, chances);
            }

            Console.WriteLine("Suas chances acabaram.....");
            Console.WriteLine("");
            Console.WriteLine("     _.-^^---....,,^^,       ");
            Console.WriteLine(" _--                  --_  ");
            Console.WriteLine("<                        >)");
            Console.WriteLine("|                         | ");
            Console.WriteLine(" \\._                   _./  ");
            Console.WriteLine("    ```--. . , ; .--'''       ");
            Console.WriteLine("          | | | |             ");
            Console.WriteLine("       .-=||  | |=-.   ");
            Console.WriteLine("       `-=#$%&%$#=-'   ");
            Console.WriteLine("          | ;  :|     ");
            Console.WriteLine(" _____.,-#%&$@%#&#~,._____");
            Console.WriteLine("");
        }

        static void PlantBomb(string[,] campo, string[,] campoV)
        {
            for (int i = 0; i < TAMX; i++)
            {
                for (int j = 0; j < TAMY; j++)
                {
                    Random random = new Random();
                    var n = random.Next(1, 100);
                    campo[j, i] = Convert.ToString(n % 2);
                    campoV[j, i] = "0";
                }
            }
        }

        static void ImprimeCampo(string[,] campo)
        {
            Console.WriteLine("  X [0] [1] [2] [3] [4] [5] [6] [7]");
            Console.WriteLine(" Y ");
            for (int i = 0; i < TAMX; i++)
            {
                Console.Write($"[{i}] ");
                for (int j = 0; j < TAMY; j++)
                {
                    Console.Write($" {campo[j, i]}  ");
                }
                Console.WriteLine();
            }
            Console.WriteLine();
        }

        static int CheckBomb(int x, int y, string[,] campo, string[,] campoV, int chances)
        {
            if (campo[x, y] == "1")
            {
                chances--;
                Console.WriteLine($"Que pena, você acertou uma bomba! Restam {chances} tentativas.\n");
                campo[x, y] = "X";
                campoV[x, y] = "X";
            }
            else if (campo[x, y] == "0")
            {
                Console.WriteLine("Que sorte, não tinha bomba!\n");
                campo[x, y] = "_";
                campoV[x, y] = "_";
            }
            else if (campo[x, y] == "X" || campo[x, y] == "_")
            {
                Console.WriteLine("Você já jogou essa posição, escolha outra!");
            }

            ImprimeCampo(campoV);
            return chances;
        }
    }
}