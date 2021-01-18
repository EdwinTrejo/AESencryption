using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace MAESSERVICE
{
    public partial class MAESService
    {
        static void Main(string[] args)
        {
            InitProcs();
            MessageControllerService();
        }

        private static void MessageControllerService()
        {
            //thread
            Console.WriteLine("Message Controller Start");
            while (true)
            {
                Thread.Sleep(1000);
            }
        }

        private static void WaitForOrderFromUDP()
        {
            lock (m_lock)
            {
                bool msg_revd = false;
                while (!msg_revd)
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

        private static void  Decrypt()
        {
            lock (m_lock)
            {
            }
        }

        private static void InitProcs()
        {
            //create threads;
            uart_send_svc = new Thread(UARTServiceSend);
            uart_recv_svc = new Thread(UARTServiceReceive);
            udp_send_svc = new Thread(UDPServiceSend);
            udp_recv_svc = new Thread(UDPServiceReceive);
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
