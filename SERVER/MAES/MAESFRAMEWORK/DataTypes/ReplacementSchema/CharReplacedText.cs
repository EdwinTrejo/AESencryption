using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAESFRAMEWORK.DataTypes.ReplacementSchema
{
    /// <summary>
    /// full message that needs  to be broken down
    /// </summary>
    public class CharReplacedText
    {
        public byte[] Text { get; set; }
        public int SchemaId;
        public int TextPosition { get; set; }

        public CharReplacedText(int SchemaId)
        {
            this.SchemaId = SchemaId;
        }
    }

    /// <summary>
    /// Message that has been broken down into pieces of 16 bytes each
    /// </summary>
    public class ReplacedMessage
    {
        public List<CharReplacedText> replacedTexts = new List<CharReplacedText>();
        public int SchemaId;

        public ReplacedMessage(int SchemaId)
        {
            this.SchemaId = SchemaId;
        }
    }
}