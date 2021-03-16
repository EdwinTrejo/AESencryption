using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAESFRAMEWORK.DataTypes.ReplacementSchema
{
    public class ReplacementSchemaType
    {
        /// <summary>
        /// Unique identifier for a schema, number (whatever you want)
        /// </summary>
        public int SchemaId { get; set; }

        /// <summary>
        /// What order was used to make the replacement set
        /// </summary>
        public int OrderId { get; set; }

        /// <summary>
        /// Replacement set identifier
        /// </summary>
        public HashSet<Tuple<char, char>> SchemaSet { get; set; }
    }
}