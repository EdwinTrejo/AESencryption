using MAESFRAMEWORK.DataTypes.AES;
using System.Text;
using System.Threading;
using System.IO.Ports;
using System.Collections.Generic;
using NUnit.Framework;
using System.IO;
using Newtonsoft.Json;

namespace UnitTests.AES
{
    //[TestFixture]
    [Category("AESMessage")]
    public class AESMessageTests
    {
        private enum MAES_INSTRUCTION { NONE, ENCRYPT, DECRYPT, ENCRYPTRESULT, DECRYPTRESULT, NEWSCHEMA, DELSCHEMA }

        private readonly int SCHEMA_ID = 1;

        //00112233445566778899aabbccddeeff
        //ABEiM0RVZneImaq7zN3u/w==
        private readonly List<byte> TEST_PLAINTEXT = new List<byte>() { 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff };

        //2b7e151628aed2a6abf7158809cf4f3c
        //K34VFiiu0qar9xWICc9PPA==
        private readonly List<byte> TEST_KEY = new List<byte>() { 0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c };

        //8DF4E9AAC5C7573A27D8D055D6E4D64B
        //jfTpqsXHVzon2NBV1uTWSw==
        private readonly List<byte> TEST_CYPHERTEXT = new List<byte>() { 0x8D, 0xF4, 0xE9, 0xAA, 0xC5, 0xC7, 0x57, 0x3A, 0x27, 0xD8, 0xD0, 0x55, 0xD6, 0xE4, 0xD6, 0x4B };

        private readonly string decrypt_instruction_filepath = @"AES\decrypt_instruction.json";
        private readonly string encrypt_instruction_filepath = @"AES\encrypt_instruction.json";
        private readonly string new_schema_instruction_filepath = @"AES\new_schema.json";
        private readonly string del_schema_instruction_filepath = @"AES\del_schema.json";

        AESMessage enc_msg, dec_msg, new_msg, del_msg;

        [Test, Order(0)]
        public void CanOpenFiles()
        {
            bool FileExists = false;
            if (File.Exists(decrypt_instruction_filepath)) FileExists = true;
            Assert.AreEqual(true, FileExists);

            FileExists = false;
            if (File.Exists(encrypt_instruction_filepath)) FileExists = true;
            Assert.AreEqual(true, FileExists);

            FileExists = false;
            if (File.Exists(new_schema_instruction_filepath)) FileExists = true;
            Assert.AreEqual(true, FileExists);

            FileExists = false;
            if (File.Exists(del_schema_instruction_filepath)) FileExists = true;
            Assert.AreEqual(true, FileExists);
        }

        [Test, Order(1)]
        public void CanParseDecryptFile()
        {
            //open file and get json string
            string[] decrypt_text_array = File.ReadAllLines(decrypt_instruction_filepath);
            StringBuilder decrypt_sr = new StringBuilder();
            foreach (string line in decrypt_text_array) decrypt_sr.AppendLine(line);
            string decrypt_text = decrypt_sr.ToString();

            //clear null
            string decrypt_text_rep_null = decrypt_text.Replace("\"null\"", "null");

            //deserialize message
            AESMessage decrypt_message = JsonConvert.DeserializeObject<AESMessage>(decrypt_text_rep_null);

            //check if the plaintext is correct
            List<byte> result_output1 = new List<byte>(decrypt_message.UserText);
            CollectionAssert.AreEqual(TEST_CYPHERTEXT, result_output1);

            //check if the key is correct
            List<byte> result_output2 = new List<byte>(decrypt_message.UserKey);
            CollectionAssert.AreEqual(TEST_KEY, result_output2);

            //check if the message type is correct
            int result_output3 = decrypt_message.MessageType;
            Assert.AreEqual((int)MAES_INSTRUCTION.DECRYPT, result_output3);

            //check if the schema id is correct
            int result_output4 = decrypt_message.SchemaId;
            Assert.AreEqual(SCHEMA_ID, result_output4);
        }

        [Test, Order(2)]
        public void CanParseEncryptFile()
        {
            //open file and get json string
            string[] encrypt_text_array = File.ReadAllLines(encrypt_instruction_filepath);
            StringBuilder encrypt_sr = new StringBuilder();
            foreach (string line in encrypt_text_array) encrypt_sr.AppendLine(line);
            string encrypt_text = encrypt_sr.ToString();

            //clear null
            string encrypt_text_rep_null = encrypt_text.Replace("\"null\"", "null");

            //deserialize message
            AESMessage encrypt_message = JsonConvert.DeserializeObject<AESMessage>(encrypt_text_rep_null);

            //check if the plaintext is correct
            List<byte> result_output1 = new List<byte>(encrypt_message.UserText);
            CollectionAssert.AreEqual(TEST_PLAINTEXT, result_output1);

            //check if the key is correct
            List<byte> result_output2 = new List<byte>(encrypt_message.UserKey);
            CollectionAssert.AreEqual(TEST_KEY, result_output2);

            //check if the message type is correct
            int result_output3 = encrypt_message.MessageType;
            Assert.AreEqual((int)MAES_INSTRUCTION.ENCRYPT, result_output3);

            //check if the schema id is correct
            int result_output4 = encrypt_message.SchemaId;
            Assert.AreEqual(SCHEMA_ID, result_output4);
        }
    }
}
