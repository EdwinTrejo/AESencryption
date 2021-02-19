using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace UseAES
{
    public class Program
    {
        public static List<HashSet<Tuple<char, char>>> Replacements = new List<HashSet<Tuple<char, char>>>();
        static void Main(string[] args)
        {
            LoadAlphabets();

            string endEncrAddons = "Howdy";
            string useEndEncrAddons = ChangeWordToNewAlphabet(endEncrAddons, 2);

            string wordToEncrypt = $"This is a sentence or a piece of content";
            string newWord = $"{ChangeWordToNewAlphabet(wordToEncrypt, 1)}";

            byte[] KeyHold;
            byte[] IVHold;

            byte[] encrypted;
            using (Aes myAes = Aes.Create())
            {

                KeyHold = myAes.Key;
                IVHold = myAes.IV;

                ICryptoTransform encryptor = myAes.CreateEncryptor(myAes.Key, myAes.IV);
                using (MemoryStream msEncrypt = new MemoryStream())
                {
                    using (CryptoStream csEncrypt = new CryptoStream(msEncrypt, encryptor, CryptoStreamMode.Write))
                    {
                        using (StreamWriter swEncrypt = new StreamWriter(csEncrypt))
                        {
                            //Write all data to the stream.
                            swEncrypt.Write(newWord);
                        }
                        encrypted = msEncrypt.ToArray();
                    }
                }
            }


            //add to byte array from secret padding
            //remove from byte array and remove secret padding

            //Now Decrypt
            string plaintext = string.Empty;
            using (Aes aesAlg = Aes.Create())
            {
                aesAlg.Key = KeyHold;
                aesAlg.IV = IVHold;

                // Create a decryptor to perform the stream transform.
                ICryptoTransform decryptor = aesAlg.CreateDecryptor(aesAlg.Key, aesAlg.IV);

                // Create the streams used for decryption.
                using (MemoryStream msDecrypt = new MemoryStream(encrypted))
                {
                    using (CryptoStream csDecrypt = new CryptoStream(msDecrypt, decryptor, CryptoStreamMode.Read))
                    {
                        using (StreamReader srDecrypt = new StreamReader(csDecrypt))
                        {

                            // Read the decrypted bytes from the decrypting stream
                            // and place them in a string.
                            plaintext = srDecrypt.ReadToEnd();
                        }
                    }
                }
            }

            string backToNormal = ChangeToBaseAlphabet(plaintext, 1);
            string backToNormalAndRemove = backToNormal.Split(useEndEncrAddons.ToCharArray(), StringSplitOptions.None)[0];
        }

        public static void LoadAlphabets()
        {
            string path = @"..\..\..\GenerateConversionLibrary\bin\Debug\";
            string filename = $"alphabet_";
            List<string> filepaths = new List<string>() { $@"{path}{filename}1", $@"{path}{filename}2", $@"{path}{filename}3", $@"{path}{filename}4" };
            foreach (string filepath in filepaths)
            {
                using (StreamReader sr = File.OpenText(filepath))
                {
                    HashSet<Tuple<char, char>> alphabet = new HashSet<Tuple<char, char>>();
                    List<string> strings = new List<string>();
                    strings = sr.ReadToEnd().Split(new string[] { "\t\t" }, StringSplitOptions.None).ToList();
                    foreach (string sr2 in strings)
                    {
                        if (!string.IsNullOrWhiteSpace(sr2))
                        {
                            alphabet.Add(Tuple.Create(sr2[0], sr2[2]));
                        }
                    }
                    Replacements.Add(alphabet);
                }
            }
        }
        
        /// <summary>
        /// Allows for the initial change from regular english alphabet to a database changed alphabet
        /// Mimic FPGA order since the program on an verilog cant just use LINQ operations
        /// </summary>
        /// <param name="currentWords"></param>
        /// <param name="alphabetToUse"></param>
        /// <returns></returns>
        public static string ChangeWordToNewAlphabet(string currentWords, int alphabetToUse)
        {
            StringBuilder sr = new StringBuilder();
            //same as for int i and number of chars in word unless we are going from stream
            //in which case a stream would have to be performed on using binary operations here
            foreach(char character in currentWords)
            {
                char replacedChar = Replacements[alphabetToUse - 1].Where(x => x.Item1 == character).Select(x => x.Item2).FirstOrDefault(); //LINQ have to rethink
                if (replacedChar == '\0')
                    sr.Append(character);
                else
                    sr.Append(replacedChar);
            }
            return sr.ToString();
        }

        public static string ChangeToBaseAlphabet(string combabulatedWord, int alphabetToUse)
        {
            StringBuilder sr = new StringBuilder();
            foreach (char character in combabulatedWord)
            {
                char replacedChar = Replacements[alphabetToUse - 1].Where(x => x.Item2 == character).Select(x => x.Item1).FirstOrDefault(); //LINQ have to rethink
                if (replacedChar == '\0')
                    sr.Append(character);
                else
                    sr.Append(replacedChar);
            }
            return sr.ToString();
        }
    }
}
