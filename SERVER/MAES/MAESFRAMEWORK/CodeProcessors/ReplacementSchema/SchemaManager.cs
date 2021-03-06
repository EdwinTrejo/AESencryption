using MAESFRAMEWORK.DataTypes.ReplacementSchema;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAESFRAMEWORK.CodeProcessors.ReplacementSchema
{
    public class SchemaManager : SchemaManagerSettings
    {
        public Encoding encode_set { get { return Encoding.ASCII; } }

        public CharReplacedText CharacterReplacePlaintext(CharReplacedText plaintext)
        {
            ReplacementSchemaType schema = GetSchema(plaintext.SchemaId);
            string plaintext_str = encode_set.GetString(plaintext.Text);
            string char_replaced_string = ChangeWordToNewAlphabet(plaintext_str, schema);

            CharReplacedText replaced_text = new CharReplacedText();
            replaced_text.SchemaId = schema.SchemaId;
            replaced_text.Text = encode_set.GetBytes(char_replaced_string);
            return replaced_text;
        }

        public CharReplacedText CharacterReplaceCyphertext(CharReplacedText cyphertext)
        {
            ReplacementSchemaType schema = GetSchema(cyphertext.SchemaId);
            string cyphertext_str = encode_set.GetString(cyphertext.Text);
            string char_replaced_string = ChangeToBaseAlphabet(cyphertext_str, schema);

            CharReplacedText replaced_text = new CharReplacedText();
            replaced_text.SchemaId = schema.SchemaId;
            replaced_text.Text = encode_set.GetBytes(char_replaced_string);
            return replaced_text;
        }

        /// <summary>
        /// Allows for the initial change from regular english alphabet to a database changed alphabet
        /// Mimic FPGA order since the program on an verilog cant just use LINQ operations
        /// </summary>
        /// <param name="plaintext"></param>
        /// <param name="SchemaId"></param>
        /// <returns></returns>
        private string ChangeWordToNewAlphabet(string plaintext, ReplacementSchemaType schema)
        {
            StringBuilder sr = new StringBuilder();
            //same as for int i and number of chars in word unless we are going from stream
            //in which case a stream would have to be performed on using binary operations here
            foreach (char character in plaintext)
            {
                char replacedChar = schema.SchemaSet.Where(x => x.Item1 == character).Select(x => x.Item2).FirstOrDefault(); //LINQ have to rethink
                if (replacedChar == '\0')
                    sr.Append(character);
                else
                    sr.Append(replacedChar);
            }
            return sr.ToString();
        }

        private string ChangeToBaseAlphabet(string cyphertext, ReplacementSchemaType schema)
        {
            StringBuilder sr = new StringBuilder();
            foreach (char character in cyphertext)
            {
                char replacedChar = schema.SchemaSet.Where(x => x.Item2 == character).Select(x => x.Item1).FirstOrDefault(); //LINQ have to rethink
                if (replacedChar == '\0')
                    sr.Append(character);
                else
                    sr.Append(replacedChar);
            }
            return sr.ToString();
        }
    }
}
