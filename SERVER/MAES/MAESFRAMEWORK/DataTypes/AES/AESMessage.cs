using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAESFRAMEWORK.DataTypes.AES
{
    public class AESMessage
    {
        /// <summary>
        /// MessageType 1 Encrypt this
        /// MessageType 2 Decrypt this
        /// MessageType 3 Encryption Result
        /// MessageType 4 Decryption Result
        /// MessageType 5 new Character Replacement Schema
        /// MessageType 6 delete Character Replacement Schema
        /// </summary>
        [JsonProperty("MessageType", Required = Newtonsoft.Json.Required.Always)]
        public int MessageType { get; set; }

        /// <summary>
        /// User created character replacements saved on system
        /// if null, will use system default or no replacement
        /// </summary>
        [JsonProperty("CharSchemaId", Required = Newtonsoft.Json.Required.AllowNull)]
        public int? CharSchemaId { get; set; }

        /// <summary>
        /// creates a new character schema replacement on system
        /// or deletes a character schema
        /// </summary>
        [JsonProperty("ReplacementSchema")]
        public CharSchema[] ReplacementSchema { get; set; }

        /// <summary>
        /// Encryption or Decryption text
        /// </summary>
        [JsonProperty("UserText")]
        public byte[] UserText { get; set; }

        /// <summary>
        /// Key used to encrypt or decrypt
        /// </summary>
        [JsonProperty("UserKey")]
        public byte[] UserKey { get; set; }

        /// <summary>
        /// server response text result to encrypt or decrypt
        /// </summary>
        [JsonProperty("ServerText")]
        public byte[] ServerText { get; set; }
    }

    public class CharSchema
    {
        [JsonProperty("NormalChar")]
        public char NormalChar { get; set; }

        [JsonProperty("ReplacementChar")]
        public char ReplacementChar { get; set; }
    }
}