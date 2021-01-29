using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using MAESFRAMEWORK.DataTypes.AES;
using Newtonsoft.Json;

namespace MAESSERVICE
{
    public partial class MAESService
    {
        static void Main(string[] args)
        {
            InitProcs();
            MessageControllerService();
            charSchemas = new Dictionary<int, CharSchema[]>();
        }

        //TODO: Make Service Scalable (OPTIONAL)

        private static void MessageControllerService()
        {
            //thread
            Console.WriteLine("Message Controller Start");
            while (true)
            {
                //message flow will happen here
                WaitForOrderFromUDP();
                try
                {
                    //MessageType 1 Encrypt this
                    //MessageType 2 Decrypt this
                    //MessageType 3 Encryption Result
                    //MessageType 4 Decryption Result
                    //MessageType 5 new Character Replacement Schema
                    //MessageType 6 delete Character Replacement Schema
                    AESMessage incoming_message = JsonConvert.DeserializeObject<AESMessage>(from_udp.ToString());
                    switch (incoming_message.MessageType)
                    {
                        case 1:
                            {
                                Encrypt();
                                break;
                            };
                        case 2:
                            {
                                Decrypt();
                                break;
                            };
                        case 5:
                        case 6:
                            {
                                CharSchema[] CharSchema = incoming_message.ReplacementSchema;
                                if (incoming_message.CharSchemaId == null)
                                    throw new InvalidCastException("No Char Replacement Schema Provided");
                                
                                int CharSchemaId = (int)incoming_message.CharSchemaId;
                                
                                if (incoming_message.MessageType == 5 && incoming_message.ReplacementSchema.Length < 1)
                                    throw new ArgumentNullException("Trying to create a New Char Replacement Schema with no schema");
                                
                                ManageCharacterReplacementSchema(incoming_message.MessageType, CharSchemaId, incoming_message.ReplacementSchema);
                                break;
                            };
                        default:
                            {
                                throw new NotImplementedException($"Message Type is not an acceptable value {incoming_message.MessageType}");
                            }
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.StackTrace);
                }
                Thread.Sleep(1000);
            }
        }

        private static void WaitForOrderFromUDP()
        {
            lock (m_lock)
            {
                udp_receive_complete = false;
                udp_receive_ready = true;
                while (!udp_receive_complete)
                {
                    Thread.Sleep(1000);
                }
            }
        }

        private static void Encrypt()
        {
            lock (m_lock)
            {
            }
        }

        private static void Decrypt()
        {
            lock (m_lock)
            {
            }
        }

        private static void ManageCharacterReplacementSchema(int MessageType, int CharSchemaId, CharSchema[] ReplacementSchema)
        {
            //code will go here
            lock (m_lock)
            {
                if (MessageType == 5)
                {
                    //add dictionary
                    if (charSchemas.ContainsKey(CharSchemaId)) throw new InvalidOperationException("Dictionary Already exists");
                }
                else if (MessageType == 6)
                {
                    //delete dictionary
                }
            }
        }

        private static void InitProcs()
        {
            //create threads;
            uart_send_svc = new Thread(UARTServiceSend);
            uart_recv_svc = new Thread(UARTServiceReceive);
            udp_send_svc = new Thread(UDPServiceSend);
            udp_recv_svc = new Thread(UDPServiceReceive);

            uart_send_svc.Name = "uart_send_svc";
            uart_recv_svc.Name = "uart_recv_svc";
            udp_send_svc.Name = "udp_send_svc";
            udp_recv_svc.Name = "udp_recv_svc";

            //start threads
            uart_send_svc.Start();
            uart_recv_svc.Start();
            udp_send_svc.Start();
            udp_recv_svc.Start();
        }

        ~MAESService()
        {
            //close gracefully
#pragma warning disable SYSLIB0006
            uart_send_svc.Abort();
            uart_recv_svc.Abort();
            udp_send_svc.Abort();
            udp_recv_svc.Abort();
#pragma warning restore SYSLIB0006
        }
    }
}
