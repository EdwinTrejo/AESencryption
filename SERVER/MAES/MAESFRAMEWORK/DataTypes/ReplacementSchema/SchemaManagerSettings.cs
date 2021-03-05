using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAESFRAMEWORK.DataTypes.ReplacementSchema
{
    public class SchemaManagerSettings
    {
        ReplacementSchema Schemas2;
        private static List<HashSet<Tuple<char, char>>> Schemas = new List<HashSet<Tuple<char, char>>>();
        private static List<HashSet<int>> orders = new List<HashSet<int>>();
        private static List<char> charss = new List<char>()
        {
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' ',
            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
            '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '!', '@', '#', '$', '&', '*', '(', ')', '-', '_', '+', '='
        };
        private const int c_NumberChars = 75;


    }
}
