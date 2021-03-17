using MAESFRAMEWORK.CodeProcessors.ReplacementSchema;
using MAESFRAMEWORK.CodeProcessors.UART;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitTests
{
    public class TestingUtilities : TestingSettings
    {
        /// <summary>
        /// Constant schema that is used to char replace text
        /// </summary>
        /// <param name="m_schema"></param>
        /// <returns></returns>
        public int GenerateConstantSchema(SchemaManager m_schema)
        {
            HashSet<int> new_order = new HashSet<int>();
            for (int i = m_schema.max_replaceable_nums - 1; i >= 0; i--)
            {
                new_order.Add(i);
            }
            return m_schema.AddExternalSchema(new_order);
        }

        /// <summary>
        /// start and restart the uart device
        /// </summary>
        /// <param name="m_uart"></param>
        public void ResetUARTDevice()
        {
            if (m_uart != null)
            {
                m_uart.Close();
                m_uart.Open();
            }
            else
            {
                m_uart = new UARTManager(uart_port, baudrate, ReadTimeout, WriteTimeout, handshake, parity, stopBits);
                if (!m_uart.ready)
                {
                    m_uart.Initialize();
                }
            }
        }

        /// <summary>
        /// read a whole file into a string
        /// </summary>
        /// <param name="filepath"></param>
        /// <returns></returns>
        public string GetFileStringContent(string filepath)
        {
            //open file and get json string
            string[] text_array = File.ReadAllLines(filepath);
            StringBuilder sr = new StringBuilder();
            foreach (string line in text_array) sr.AppendLine(line);
            return sr.ToString();
        }

        /// <summary>
        /// parse a json into a type T
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="json_file_text"></param>
        /// <param name="clean_null"></param>
        /// <returns></returns>
        public T ParseJson<T>(string json_file_text, bool clean_null)
        {
            if (clean_null)
            {
                //clear null
                string message_replace_null = json_file_text.Replace("\"null\"", "null");

                //deserialize message
                return JsonConvert.DeserializeObject<T>(message_replace_null);
            }
            else
            {
                //deserialize message
                return JsonConvert.DeserializeObject<T>(json_file_text);
            }
        }
    }
}
