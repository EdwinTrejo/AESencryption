using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using MAESFRAMEWORK.DataTypes.AES;
using MAESFRAMEWORK.DataTypes.ReplacementSchema;
using Newtonsoft.Json;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace MAESSERVICE
{
    public partial class MAESService
    {
        private static void Main(string[] args)
        {
            //process can only be run as admin realtime
            Process[] processes = Process.GetProcessesByName("MAESSERVICE");
            foreach (var proc in processes)
            {
                proc.PriorityClass = ProcessPriorityClass.RealTime;
            }
            Console.WriteLine("MAES::Admin::RealTime");
            //UART init
            InitUARTService();
            //UDP init
            InitUDPService();
            //generate 4 replacement schemas
            schemaManager.RequestNewSchema();
            schemaManager.RequestNewSchema();
            schemaManager.RequestNewSchema();
            schemaManager.RequestNewSchema();
            //start main thread
            MessageControllerService();
        }

        //TODO: Make Service Scalable (OPTIONAL)

        private static void MessageControllerService()
        {
            //thread
            Console.WriteLine("Message Controller Start");
            while (true)
            {
                //message flow will happen here
                byte[] from_udp = WaitForOrderFromUDP();
                string json_string = encode_set.GetString(from_udp);
                try
                {
                    //MessageType 1 Encrypt this
                    //MessageType 2 Decrypt this
                    //MessageType 3 Encryption Result
                    //MessageType 4 Decryption Result
                    //MessageType 5 new Character Replacement Schema
                    //MessageType 6 delete Character Replacement Schema
                    //MessageType 7 notify new Character Replacement Schema

                    string replace_null = json_string.Replace("\"null\"", "null");
#if DEBUG
                    Console.WriteLine("UDP::MSG::{0}", replace_null);
#endif
                    AESMessage incoming_message = JsonConvert.DeserializeObject<AESMessage>(replace_null);

                    int CharSchemaId = incoming_message.SchemaId;

                    switch (incoming_message.MessageType)
                    {
                        case (int)MAES_INSTRUCTION.ENCRYPT:
                            {
                                Encrypt(incoming_message);
                                break;
                            };
                        case (int)MAES_INSTRUCTION.DECRYPT:
                            {
                                Decrypt(incoming_message);
                                break;
                            };
                        case (int)MAES_INSTRUCTION.NEWSCHEMA:
                            {
                                NewSchema(incoming_message);
                                break;
                            }
                        case (int)MAES_INSTRUCTION.DELSCHEMA:
                            {
                                DelSchema(incoming_message);
                                break;
                            }
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.StackTrace);
                    AESMessage error_result = new AESMessage();
                    error_result.MessageType = (int)MAES_INSTRUCTION.ERRORRESULT;
                    error_result.SchemaId = 1;
                    error_result.ServerText = encode_set.GetBytes(e.StackTrace);

                    //send message back to the device it came from
                    SendAESMessage(error_result);
                }
                Thread.Sleep(50);
            }
        }

        private static void Encrypt(AESMessage plaintext)
        {
            //get the details for the newly created message
            //padding and char replacement
            CharReplacedText charReplacedText = new CharReplacedText(plaintext.SchemaId);
            charReplacedText.Text = plaintext.UserText;
            ReplacedMessage full_message = schemaManager.CharacterReplacePlaintext(charReplacedText);
            byte[] userkey = plaintext.UserKey;

            List<byte> encryption_result = new List<byte>();

            //send to uart
            //receive from uart
            foreach (CharReplacedText byte_block in full_message.replacedTexts)
            {
                List<byte> enc_rslt = SendEncryptInstruction(byte_block.Text, userkey).ToList();
                encryption_result.AddRange(enc_rslt);
            }

            //create return message
            AESMessage encrypt_result = new AESMessage();
            encrypt_result.MessageType = (int)MAES_INSTRUCTION.ENCRYPTRESULT;
            encrypt_result.SchemaId = full_message.SchemaId;
            encrypt_result.ServerText = encryption_result.ToArray();

            //send message back to the device it came from
            SendAESMessage(encrypt_result);
        }

        private static void Decrypt(AESMessage cyphertext)
        {
            //get the details for the newly created message
            //padding and char replacement
            ReplacedMessage decrypted_text = new ReplacedMessage(cyphertext.SchemaId);
            List<CharReplacedText> decrypt_these_blocks = schemaManager.SplitChunks(cyphertext.UserText, decrypted_text.SchemaId).ToList();
            byte[] userkey = cyphertext.UserKey;

            //send to uart
            //receive from uart
            foreach (CharReplacedText byte_block in decrypt_these_blocks)
            {
                List<byte> dec_rslt = SendDecryptInstruction(byte_block.Text, userkey).ToList();
                CharReplacedText decrypted_block = new CharReplacedText(decrypted_text.SchemaId);
                decrypted_block.TextPosition = byte_block.TextPosition;
                decrypted_block.Text = dec_rslt.ToArray();
                decrypted_text.replacedTexts.Add(decrypted_block);
            }

            CharReplacedText replacedMessage = schemaManager.CharacterReplaceCyphertext(decrypted_text);

            //create return message
            AESMessage decrypt_result = new AESMessage();
            decrypt_result.MessageType = (int)MAES_INSTRUCTION.DECRYPTRESULT;
            decrypt_result.SchemaId = replacedMessage.SchemaId;
            decrypt_result.ServerText = replacedMessage.Text;

            //send message back to the device it came from
            SendAESMessage(decrypt_result);
        }

        private static void NewSchema(AESMessage message)
        {
            int new_schema = schemaManager.RequestNewSchema();
            AESMessage result = new AESMessage()
            {
                MessageType = (int)MAES_INSTRUCTION.NEWSCHEMARESULT,
                SchemaId = new_schema
            };
            SendAESMessage(result);
        }

        private static void DelSchema(AESMessage message)
        {
            bool can_delete = schemaManager.RequestDeleteSchema(message.SchemaId);
            if (!can_delete) throw new KeyNotFoundException("Schema::Delete::Request::NOT::FOUND");
        }

        ~MAESService()
        {
            //close gracefully
#pragma warning disable SYSLIB0006
#pragma warning restore SYSLIB0006
        }
    }
}
