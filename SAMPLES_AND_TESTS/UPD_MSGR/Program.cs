using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace UPD_MSGR
{
    class Program
    {
        private enum MAES_INSTRUCTION { NONE, ENCRYPT, DECRYPT, ENCRYPTRESULT, DECRYPTRESULT, NEWSCHEMA, DELSCHEMA }

        private static Mutex m_lock = new Mutex();

        private static void sendMessage(UdpClient client, string message, string ip, int port)
        {
            m_lock.WaitOne();
            byte[] bytes = Encoding.ASCII.GetBytes(message);
            client.Send(bytes, bytes.Length, ip, port);
            m_lock.ReleaseMutex();
        }

        static void Main(string[] args)
        {
            string device_ip = "192.168.1.4";
            string send_message;
            int port = 23443;

            //Console.WriteLine("Please enter an IP: ");
            //device_ip = Console.ReadLine();
            UdpClient receivingUdpClient = new UdpClient(port);

            Task.Run(() =>
            {
                //UdpClient receivingUdpClient = new UdpClient(port);
                IPEndPoint RemoteIpEndPoint = new IPEndPoint(IPAddress.Any, 0);
                while (true)
                {
                    //https://docs.microsoft.com/en-us/dotnet/api/system.net.sockets.udpclient.receive?view=netframework-4.8
                    //Creates a UdpClient for reading incoming data.
                    //UdpClient receivingUdpClient = new UdpClient(send_to_port);
                    //Creates an IPEndPoint to record the IP Address and port number of the sender.
                    // The IPEndPoint will allow you to read datagrams sent from any source.                    
                    try
                    {

                        // Blocks until a message returns on this socket from a remote host.
                        //m_lock.WaitOne();
                        Byte[] receiveBytes = receivingUdpClient.Receive(ref RemoteIpEndPoint);
                        string returnData = Encoding.ASCII.GetString(receiveBytes);

                        AESMessage aESMessage = JsonConvert.DeserializeObject<AESMessage>(returnData);
                        Console.WriteLine($"Received Message: ");
                        Console.WriteLine(BitConverter.ToString(aESMessage.ServerText));
                        //Console.WriteLine($"receive: {returnData.ToString()}");
                        //m_lock.ReleaseMutex();
                        //Console.WriteLine("This is the message you received: " + returnData.ToString());
                        //Console.WriteLine("This message was sent from: " + RemoteIpEndPoint.Address.ToString() +
                        //                            " on their port number: " + RemoteIpEndPoint.Port.ToString());
                    }
                    catch (Exception e)
                    {
                        Console.WriteLine(e.ToString());
                    }
                }
            });

            Task.Run(() =>
            {
                while (true)
                {
                    AESMessage new_msg = new AESMessage();
                    int first_letter = GetInstruction();

                    switch (first_letter)
                    {
                        case (int)MAES_INSTRUCTION.ENCRYPT:
                            {
                                new_msg.MessageType = (int)MAES_INSTRUCTION.ENCRYPT;
                                new_msg.SchemaId = GetSchemaId();
                                new_msg.UserText = GetText();
                                Console.WriteLine(BitConverter.ToString(new_msg.UserText));
                                new_msg.UserKey = GetKey();
                                Console.WriteLine(BitConverter.ToString(new_msg.UserKey));
                                break;
                            }
                        case (int)MAES_INSTRUCTION.DECRYPT:
                            {
                                new_msg.MessageType = (int)MAES_INSTRUCTION.DECRYPT;
                                new_msg.SchemaId = GetSchemaId();
                                new_msg.UserText = GetText();
                                Console.WriteLine(BitConverter.ToString(new_msg.UserText));
                                new_msg.UserKey = GetKey();
                                Console.WriteLine(BitConverter.ToString(new_msg.UserKey));
                                break;
                            }
                        case (int)MAES_INSTRUCTION.NEWSCHEMA:
                            {
                                new_msg.MessageType = (int)MAES_INSTRUCTION.NEWSCHEMA;
                                new_msg.SchemaId = GetSchemaId();
                                break;
                            }
                        case (int)MAES_INSTRUCTION.DELSCHEMA:
                            {
                                new_msg.MessageType = (int)MAES_INSTRUCTION.DELSCHEMA;
                                new_msg.SchemaId = GetSchemaId();
                                break;
                            }
                    }

                    send_message = JsonConvert.SerializeObject(new_msg);
                    sendMessage(receivingUdpClient, send_message, device_ip, port);
                    Thread.Sleep(300);
                }
            });

            while (true) Thread.Sleep(1000 * 1);

        }

        private static int GetInstruction()
        {
            WriteInstructions();
            bool instruction_allowed = false;
            int curr_ins = 0;
            while (!instruction_allowed)
            {
                Console.Write("Instruction: ");
                string inputval = Console.ReadLine();
                int int_inputval = Convert.ToInt32(inputval);
                curr_ins = int_inputval;
                if (curr_ins == (int)MAES_INSTRUCTION.ENCRYPT ||
                        curr_ins == (int)MAES_INSTRUCTION.DECRYPT ||
                        curr_ins == (int)MAES_INSTRUCTION.NEWSCHEMA ||
                        curr_ins == (int)MAES_INSTRUCTION.DELSCHEMA
                    )
                {
                    instruction_allowed = true;
                }
                Console.WriteLine();
            }
            return curr_ins;
        }

        private static int GetSchemaId()
        {
            Console.Write("Schema Id: ");
            string value = Console.ReadLine();
            Console.WriteLine();
            return Convert.ToInt32(value);
        }

        private static byte[] GetKey()
        {
            string example_str = "2b 7e 15 16 28 ae d2 a6 ab f7 15 88 09 cf 4f 3c";
            Console.Write($"Enter Hex Key Ex. {example_str}\t\n:");
            string user_input = Console.ReadLine().Trim();
            //https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/types/how-to-convert-between-hexadecimal-strings-and-numeric-types
            string[] hexValuesSplit = user_input.Split(' ');
            List<byte> keyret = new List<byte>();
            foreach (string hex in hexValuesSplit)
            {
                // Convert the number expressed in base-16 to an integer.
                byte value = Convert.ToByte(hex, 16);
                keyret.Add(value);
            }
            return keyret.ToArray();
        }

        private static byte[] GetText()
        {
            string example_str = "00 11 22 33 44 55 66 77 88 99 AA BB CC DD EE FF";
            Console.Write($"Enter Hex text Ex. {example_str}\t\n:");
            string user_input = Console.ReadLine().Trim();
            //https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/types/how-to-convert-between-hexadecimal-strings-and-numeric-types
            string[] hexValuesSplit = user_input.Split(' ');
            List<byte> textret = new List<byte>();
            foreach (string hex in hexValuesSplit)
            {
                // Convert the number expressed in base-16 to an integer.
                byte value = Convert.ToByte(hex, 16);
                textret.Add(value);
            }
            return textret.ToArray();
        }

        private static void WriteInstructions()
        {
            Console.WriteLine($"\"{(int)MAES_INSTRUCTION.ENCRYPT}\" Encrypt");
            Console.WriteLine($"\"{(int)MAES_INSTRUCTION.DECRYPT}\" Decrypt");
            Console.WriteLine($"\"{(int)MAES_INSTRUCTION.NEWSCHEMA}\" Request Schema");
            Console.WriteLine($"\"{(int)MAES_INSTRUCTION.DELSCHEMA}\" Delete Schema");
        }
    }
}
