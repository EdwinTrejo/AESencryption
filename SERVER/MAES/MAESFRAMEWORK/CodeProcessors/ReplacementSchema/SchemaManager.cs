using MAESFRAMEWORK.DataTypes.ReplacementSchema;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAESFRAMEWORK.CodeProcessors.ReplacementSchema
{
    /// <summary>
    /// Class that handles replacing normal text to a replacement schema and back
    /// </summary>
    public class SchemaManager : SchemaManagerSettings
    {
        public Encoding encode_set { get { return Encoding.ASCII; } }

        public int max_replaceable_nums {  get { return number_of_replaceable_chars; } }

        private const int chunk_size = 16;

        public int schemas_count { get { return num_schemas; } }

        public ReplacedMessage CharacterReplacePlaintext(CharReplacedText plaintext)
        {
            //before encryption
            ReplacementSchemaType schema = GetSchema(plaintext.SchemaId);
            string plaintext_str = encode_set.GetString(plaintext.Text);
            List<string> split_strings = SplitChunks(plaintext_str).ToList();
            ReplacedMessage return_replaced_message = new ReplacedMessage(schema.SchemaId);
            int i = 0;
            foreach (string chunk in split_strings)
            {
                string char_replaced_string = ChangeWordToNewAlphabet(chunk, schema);
                CharReplacedText replaced_text = new CharReplacedText(schema.SchemaId);
                replaced_text.Text = encode_set.GetBytes(char_replaced_string);
                replaced_text.TextPosition = i;
                return_replaced_message.replacedTexts.Add(replaced_text);
                i++;
            }

            return return_replaced_message;
        }

        public CharReplacedText CharacterReplaceCyphertext(ReplacedMessage cyphertext)
        {
            //after decryption
            //List<byte> new_string = new List<byte>();
            ReplacementSchemaType schema = GetSchema(cyphertext.SchemaId);
            CharReplacedText replaced_text = new CharReplacedText(schema.SchemaId);
            StringBuilder sr = new StringBuilder();
            foreach (CharReplacedText replacedText in cyphertext.replacedTexts)
            {
                string cyphertext_str = encode_set.GetString(replacedText.Text);
                string char_replaced_string = ChangeToBaseAlphabet(cyphertext_str, schema);
                sr.Append(char_replaced_string);
            }
            //new_string = encode_set.GetBytes(sr.ToString()).ToList();
            replaced_text.Text = encode_set.GetBytes(sr.ToString().Trim());
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

        private IEnumerable<string> SplitChunks(string str)
        {
            List<string> return_list = SplitChunkableChunks(str).ToList();
            //find out if we didnt pad the whole thing
            double str_size = str.Length;
            int real_chunk_amount = (int)System.Math.Ceiling(str_size / chunk_size);
            if (real_chunk_amount > return_list.Count())
            {
                int start_position = (return_list.Count() * chunk_size);
                string last_chunk = str.Substring(start_position).PadRight(chunk_size, ' ');
                return_list.Add(last_chunk);
            }
            return return_list;
        }

        private IEnumerable<string> SplitChunkableChunks(string str)
        {
            return Enumerable.Range(0, str.Length / chunk_size)
                .Select(i => str.Substring(i * chunk_size, chunk_size));
        }
    }
}
