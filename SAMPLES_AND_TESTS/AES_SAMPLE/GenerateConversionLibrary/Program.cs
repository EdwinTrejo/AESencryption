using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace GenerateConversionLibrary
{
    public class Program
    {
        public static List<HashSet<Tuple<char, char>>> Replacements = new List<HashSet<Tuple<char, char>>>();
        public static List<HashSet<int>> orders = new List<HashSet<int>>();
        public static List<char> charss = new List<char>() 
        { 
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' ',
            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
            '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '!', '@', '#', '$', '&', '*', '(', ')', '-', '_', '+', '='
        };
        const int c_NumberChars = 75;

        static void Main(string[] args)
        {
            GenerateRandomNumbersOnEnglishDictionary();
            ProduceAlternativeAlphabets();
            WriteToLog();
        }

        public static void GenerateRandomNumbersOnEnglishDictionary()
        {
            for (int j = 0; j < 4; j++)
            {
                HashSet<int> newHash = new HashSet<int>();
                Random random = new Random();
                for (int i = 0; i < c_NumberChars; i++)
                {
                    int nextRand = random.Next(1, c_NumberChars+1);
                    if (!newHash.Contains(nextRand))
                        newHash.Add(nextRand);
                    else
                        i--;
                }
                orders.Add(newHash);
            }
        }

        public static void ProduceAlternativeAlphabets()
        {
            for (int j = 0; j < 4; j++)
            {
                HashSet<Tuple<char, char>> newAlphabet = new HashSet<Tuple<char, char>>();
                for (int i = 0; i < c_NumberChars; i++)
                {
                    newAlphabet.Add(Tuple.Create(charss[i], charss[orders[j].ElementAt(i) - 1]));
                }
                Replacements.Add(newAlphabet);
            }
        }

        public static void WriteToLog()
        {
            int i = 0;
            foreach(var charReplacement in Replacements)
            {
                i++;
                string path = Directory.GetCurrentDirectory();
                string filename = $"alphabet_{i}";
                string fullpath = $@"{path}\{filename}";
                if (File.Exists(fullpath))
                    File.Delete(fullpath);

                using (StreamWriter sw = File.CreateText(fullpath))
                {
                    foreach (var item in charReplacement)
                    {
                        sw.Write($"{item.Item1}\t{item.Item2}\t\t");
                    }
                }
            }
        }
    }
}
