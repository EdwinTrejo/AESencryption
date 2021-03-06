using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAESFRAMEWORK.DataTypes.ReplacementSchema
{
    public class CharReplacedText
    {
        public byte[] Text { get; set; }
        public int SchemaId;

        public CharReplacedText(int SchemaId)
        {
            this.SchemaId = SchemaId;
        }
    }

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