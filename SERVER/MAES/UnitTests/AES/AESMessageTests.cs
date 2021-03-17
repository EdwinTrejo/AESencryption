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
    public class AESMessageTests : TestingUtilities
    {
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
            string decrypt_text = GetFileStringContent(decrypt_instruction_filepath);

            //deserialize message
            AESMessage decrypt_message = ParseJson<AESMessage>(decrypt_text, true);

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

            dec_msg = decrypt_message;
        }

        [Test, Order(2)]
        public void CanParseEncryptFile()
        {
            //open file and get json string
            string encrypt_text = GetFileStringContent(encrypt_instruction_filepath);

            //deserialize message
            AESMessage encrypt_message = ParseJson<AESMessage>(encrypt_text, true);

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

            enc_msg = encrypt_message;
        }

        [Test, Order(3)]
        public void CanParseSchemaFiles()
        {
            //open file and get json string
            string new_msg_text = GetFileStringContent(new_schema_instruction_filepath);
            string del_msg_text = GetFileStringContent(del_schema_instruction_filepath);

            //deserialize message
            AESMessage new_schema_msg = ParseJson<AESMessage>(new_msg_text, true);
            AESMessage del_schema_msg = ParseJson<AESMessage>(del_msg_text, true);

            /// check if the message type is correct
            Assert.AreEqual((int)MAES_INSTRUCTION.NEWSCHEMA, new_schema_msg.MessageType);
            Assert.AreEqual((int)MAES_INSTRUCTION.DELSCHEMA, del_schema_msg.MessageType);

            //check if the schema id is correct
            Assert.AreEqual(NEW_SCHEMA_ID, new_schema_msg.SchemaId);
            Assert.AreEqual(NEW_SCHEMA_ID, del_schema_msg.SchemaId);

            new_msg = new_schema_msg;
            del_msg = del_schema_msg;
        }
    }
}
