using MAESFRAMEWORK.CodeProcessors.UDP;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;

namespace MAESSERVICE
{
    public partial class MAESService
    {
        private static void UDPServiceSend()
        {
            //thread init
            lock (udp_lock)
            {
                if (m_udp == null)
                {
                    m_udp = new UDPManager(send_ip, send_port, receive_port);
                    m_udp.Initialize();
                }
            }

            while (true)
            {
                //wait for send message
                if (udp_send_ready && m_udp.ready)
                {
                    lock (udp_lock)
                    {
                        udp_send_complete = false;
                        udp_send_complete = m_udp.Send(to_udp);
                        Console.WriteLine($"Message Sent to {m_udp.identifier_one}:{m_udp.identifier_two}");
                    }
                }
                Thread.Sleep(1000);
            }
        }
        
        private static void UDPServiceReceive()
        {
            //thread init
            lock (udp_lock)
            {
                if (m_udp == null)
                {
                    m_udp = new UDPManager(send_ip, send_port, receive_port);
                    m_udp.Initialize();
                }
            }

            while (true)
            {
                //wait for receive message
                if (udp_receive_ready && m_udp.ready)
                {
                    lock (udp_lock)
                    {
                        byte[] udp_rec = m_udp.Receive();
                        from_udp = udp_rec;
                        Console.WriteLine($"Message Received from {m_udp.identifier_one}:{m_udp.identifier_two}");
                        udp_receive_complete = true;
                        udp_receive_ready = false;
                    }
                }
                Thread.Sleep(1000);
            }
        }
    }
}
