using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace MAESFRAMEWORK.DataTypes.AES
{
    public class EncryptOrder : AESMessage
    {
        [JsonArray("PlainText")]
        public class PlainText
        {
            [JsonProperty("PlainTextChar")]
            public byte PlainTextChar { get; set; }
        }

        [JsonArray("WholeKey")]
        public class WholeKey
        {
            [JsonProperty("WholeKeyChar")]
            public byte WholeKeyChar { get; set; }
        }
    }
}
