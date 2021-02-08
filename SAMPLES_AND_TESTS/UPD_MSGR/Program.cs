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
        private static Mutex m_lock = new Mutex();

        private static void sendMessage(UdpClient client, string message, string ip, int port)
        {
            m_lock.WaitOne();
            byte[] bytes = Encoding.UTF8.GetBytes(message);
            client.Send(bytes, bytes.Length, ip, port);
            m_lock.ReleaseMutex();
        }

        static void Main(string[] args)
        {
            string device_ip = "192.168.1.36";
            string send_message;
            int send_port = 13000;
            int receive_port = 13001;
            int port = 13000;

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
                        string returnData = Encoding.UTF8.GetString(receiveBytes);
                        Console.WriteLine($"receive: {returnData.ToString()}");
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
                    //Task.Run(() => { 
                    Console.Write("send: ");
                    send_message = Console.ReadLine();
                    //});
                    sendMessage(receivingUdpClient, send_message, device_ip, port);
                    Thread.Sleep(1000 * 1);//waits 1 seconds
                }
            });

            while (true) Thread.Sleep(1000 * 1);

        }
    }
}
