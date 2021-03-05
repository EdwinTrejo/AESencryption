using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAESFRAMEWORK.DataTypes.ReplacementSchema
{
    public class ReplacementSchema
    {
        public int SchemaId { get; set; }
        public HashSet<Tuple<char, char>> SchemaSet { get; set; }
    }
}