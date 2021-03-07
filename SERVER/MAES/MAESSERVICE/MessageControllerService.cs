using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using MAESFRAMEWORK.DataTypes.AES;
using MAESFRAMEWORK.DataTypes.ReplacementSchema;
using Newtonsoft.Json;

namespace MAESSERVICE
{
    public partial class MAESService
    {
        static void Main(string[] args)
        {
            //process can only be run as admin realtime
            Process[] processes = Process.GetProcessesByName("MAESSERVICE");
            foreach (var proc in processes)
            {
                proc.PriorityClass = ProcessPriorityClass.RealTime;
            }
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
                try
                {
                    //MessageType 1 Encrypt this
                    //MessageType 2 Decrypt this
                    //MessageType 3 Encryption Result
                    //MessageType 4 Decryption Result
                    //MessageType 5 new Character Replacement Schema
                    //MessageType 6 delete Character Replacement Schema
                    //MessageType 7 notify new Character Replacement Schema
                    AESMessage incoming_message = JsonConvert.DeserializeObject<AESMessage>(from_udp.ToString());
                    int CharSchemaId = incoming_message.SchemaId;

                    switch (incoming_message.MessageType)
                    {
                        case 1:
                            {
                                Encrypt(incoming_message);
                                break;
                            };
                        case 2:
                            {
                                Decrypt(incoming_message);
                                break;
                            };
                        case 5:
                            {
                                int new_schema = schemaManager.RequestNewSchema();
                                break;
                            }
                        case 6:
                            {
                                schemaManager.RequestDeleteSchema(CharSchemaId);
                                break;
                            }
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.StackTrace);
                }
                Thread.Sleep(50);
            }
        }

        private static void Encrypt(AESMessage plaintext)
        {
            lock (m_lock)
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
                    List<byte> enc_rslt = SendEncryptInstruction(byte_block.Text, userkey).ToList(); ;
                    encryption_result.Concat(enc_rslt);
                }

                //create return message
                AESMessage encrypt_result = new AESMessage();
                encrypt_result.MessageType = (int)MAES_INSTRUCTION.ENCRYPTRESULT;
                encrypt_result.SchemaId = full_message.SchemaId;
                encrypt_result.ServerText = encryption_result.ToArray();

                //send message back to the device it came from
                SendAESMessage(encrypt_result);
            }
        }

        private static void Decrypt(AESMessage cyphertext)
        {
            lock (m_lock)
            {
                //get the details for the newly created message
                //padding and char replacement
                CharReplacedText charReplacedText = new CharReplacedText(cyphertext.SchemaId);
                charReplacedText.Text = cyphertext.UserText;
                ReplacedMessage full_message = schemaManager.CharacterReplacePlaintext(charReplacedText);
                byte[] userkey = cyphertext.UserKey;

                List<byte> decryption_result = new List<byte>();

                //send to uart
                //receive from uart
                foreach (CharReplacedText byte_block in full_message.replacedTexts)
                {
                    List<byte> dec_rslt = SendDecryptInstruction(byte_block.Text, userkey).ToList(); ;
                    decryption_result.Concat(dec_rslt);
                }

                //create return message
                AESMessage decrypt_result = new AESMessage();
                decrypt_result.MessageType = (int)MAES_INSTRUCTION.DECRYPTRESULT;
                decrypt_result.SchemaId = full_message.SchemaId;
                decrypt_result.ServerText = decryption_result.ToArray();

                //send message back to the device it came from
                SendAESMessage(decrypt_result);
            }
        }

        ~MAESService()
        {
            //close gracefully
            #pragma warning disable SYSLIB0006
            #pragma warning restore SYSLIB0006
        }
    }
}
