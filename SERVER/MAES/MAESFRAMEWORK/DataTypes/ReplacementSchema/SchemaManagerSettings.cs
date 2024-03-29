﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using uint8_t = System.Byte;

namespace MAESFRAMEWORK.DataTypes.ReplacementSchema
{
    /// <summary>
    /// Schema manager settings creates new schemas, adds them, and deletes them
    /// </summary>
    public class SchemaManagerSettings
    {
        // list of schemas that exist
        private List<ReplacementSchemaType> schemas = new List<ReplacementSchemaType>();

        // permutation of numbers 1 - 75
        // random numbers
        private List<HashSet<int>> orders = new List<HashSet<int>>();

        //private readonly List<char> replaceable_chars = new List<char>()
        //{
        //    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' ',
        //    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
        //    '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '!', '@', '#', '$', '&', '*', '(', ')', '-', '_', '+', '='
        //};

        private readonly List<uint8_t> replaceable_chars = new List<uint8_t>();

        public const int number_of_replaceable_chars = 256;

        public int num_schemas { get { return schemas.Count(); } }

        public void GenerateReplaceableChars()
        {
            for (int i = 0; i < number_of_replaceable_chars; i++)
            {
                uint8_t num = Convert.ToByte(i);
                replaceable_chars.Add(num);
            }
        }

        public bool RequestDeleteSchema(int SchemaId)
        {
            return DeleteSchema(SchemaId);
        }

        private bool DeleteSchema(int SchemaId)
        {
            ReplacementSchemaType schema = GetSchema(SchemaId);
            orders.RemoveAt(schema.OrderId);
            return schemas.Remove(schema);
        }

        public ReplacementSchemaType GetSchema(int SchemaId)
        {
            bool found = false;
            ReplacementSchemaType return_schema = new ReplacementSchemaType();

            foreach (ReplacementSchemaType schema in schemas)
            {
                if (schema.SchemaId == SchemaId)
                {
                    found = true;
                    return_schema = schema;
                    break;
                }
            }

            if (found) return return_schema;
            else
            {
                int generate_new_schema = RequestNewSchema();
                return GetSchema(generate_new_schema);
            }
        }

        public int AddExternalSchema(HashSet<int> new_order)
        {
            orders.Add(new_order);
            int order_pos = orders.IndexOf(new_order);
            return CreateSchema(order_pos);
        }

        public int RequestNewSchema()
        {
            return CreateSchema();
        }

        private int GetNextSchemaId()
        {
            return schemas.Count() + 1;
        }

        private int CurrentOrderId()
        {
            return orders.Count() - 1;
        }

        private int CreateSchema()
        {
            int current_order = GenerateRandomNumbersOnEnglishDictionary();
            int new_schema_id = GetNextSchemaId();
            HashSet<Tuple<uint8_t, uint8_t>> new_schema_set = new HashSet<Tuple<uint8_t, uint8_t>>();
            for (int i = 0; i < number_of_replaceable_chars; i++)
            {
                new_schema_set.Add(Tuple.Create(replaceable_chars[i], replaceable_chars[orders[current_order].ElementAt(i) - 1]));
            }
            ReplacementSchemaType new_schema = new ReplacementSchemaType();
            new_schema.SchemaId = new_schema_id;
            new_schema.SchemaSet = new_schema_set;
            new_schema.OrderId = current_order;
            schemas.Add(new_schema);
            return new_schema_id;
        }

        private int CreateSchema(int order_id)
        {
            int new_schema_id = GetNextSchemaId();
            HashSet<Tuple<uint8_t, uint8_t>> new_schema_set = new HashSet<Tuple<uint8_t, uint8_t>>();
            for (int i = 0; i < number_of_replaceable_chars; i++)
            {
                new_schema_set.Add(Tuple.Create(replaceable_chars[i], replaceable_chars[orders[order_id].ElementAt(i)]));
            }
            ReplacementSchemaType new_schema = new ReplacementSchemaType();
            new_schema.SchemaId = new_schema_id;
            new_schema.SchemaSet = new_schema_set;
            new_schema.OrderId = order_id;
            schemas.Add(new_schema);
            return new_schema_id;
        }

        private int GenerateRandomNumbersOnEnglishDictionary()
        {
            HashSet<int> newHash = new HashSet<int>();
            Random random = new Random();
            for (int i = 0; i < number_of_replaceable_chars; i++)
            {
                int nextRand = random.Next(1, number_of_replaceable_chars + 1);
                if (!newHash.Contains(nextRand))
                    newHash.Add(nextRand);
                else
                    i--;
            }
            orders.Add(newHash);
            return orders.IndexOf(newHash);
        }
    }
}
