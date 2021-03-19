using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using uint8_t = System.Byte;

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
        public HashSet<Tuple<uint8_t, uint8_t>> SchemaSet { get; set; }
    }
}