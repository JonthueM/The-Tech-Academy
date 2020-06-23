using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace step121_WhileDo_Assignments
{
    class Program
    {
        static void Main(string[] args)
        {




            Console.WriteLine("Now guess the year? Hint I am in my early thirties");
            int answer = Convert.ToInt32(Console.ReadLine());
            bool isGuessed2 = answer == 1987;


            while (!isGuessed2)
            {
                switch (answer)
                {
                    case 1981:
                        Console.WriteLine("What? Try again!");
                        Console.WriteLine("Guess a number?");
                        answer = Convert.ToInt32(Console.ReadLine());
                        break;
                    case 1986:
                        Console.WriteLine("Just one more number");
                        Console.WriteLine("Guess a number?");
                        answer = Convert.ToInt32(Console.ReadLine());
                        break;
                    case 1989:
                        Console.WriteLine("Even at the peak of the mountain you missed it sooo try again");
                        Console.WriteLine("Guess a number?");
                        answer = Convert.ToInt32(Console.ReadLine());
                        break;
                    case 1987:
                        Console.WriteLine("You gussed 1987. That is correct, next question");
                        isGuessed2 = true;
                        break;
                    default:
                        Console.WriteLine("Off by much, climb up and try again!");
                        Console.WriteLine("Guess a number?");
                        answer = Convert.ToInt32(Console.ReadLine());
                        break;

                }
            }


            Console.WriteLine("My Birthdate day is?");
            int number = Convert.ToInt32(Console.ReadLine());
            bool isGuessed = number == 18;

            do //Do While
            {
                switch (number)
                {
                    case 17:
                        Console.WriteLine("Close but try again");
                        Console.WriteLine("Guess a number?");
                        number = Convert.ToInt32(Console.ReadLine());
                        break;
                    case 1:
                        Console.WriteLine("Off by much, climb up and try again!");
                        Console.WriteLine("Guess a number?");
                        number = Convert.ToInt32(Console.ReadLine());
                        break;
                    case 30:
                        Console.WriteLine("Even at the peak of the mountain you missed it sooo try again");
                        Console.WriteLine("Guess a number?");
                        number = Convert.ToInt32(Console.ReadLine());
                        break;
                    case 18:
                        Console.WriteLine("You gussed 18. That is correct, next question");
                        isGuessed = true;
                        break;
                    default:
                        Console.WriteLine("Dude REALLY!!!? Try Again.");
                        Console.WriteLine("Guess a number?");
                        number = Convert.ToInt32(Console.ReadLine());
                        break;

                }
            }

           
                 
        }
    }
}
