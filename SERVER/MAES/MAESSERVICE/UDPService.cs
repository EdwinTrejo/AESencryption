using MAESFRAMEWORK.CodeProcessors.UDP;
using MAESFRAMEWORK.DataTypes.AES;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;

namespace MAESSERVICE
{
    public partial class MAESService
    {

        private static void SendAESMessage(AESMessage msg)
        {
            byte[] encoded_text = encode_set.GetBytes(JsonConvert.SerializeObject(msg));
#if DEBUG
            Console.WriteLine("UDP::TX::TRANS::{0}::{1}", System.DateTime.Now.ToString("HH:mm:ss:ffff"), m_udp.identifier_one);
            m_udp.Send(encoded_text);
#endif
#if RELEASE
            Console.WriteLine("UDP::TX::TRANS::{0}::{1}", System.DateTime.Now.ToString("HH:mm:ss:ffff"), m_udp.identifier_one);
            m_udp.Send(encoded_text);
#endif
        }

        private static void InitUDPService()
        {
            if (m_udp == null)
            {
                m_udp = new UDPManager(send_ip, port);
                m_udp.Initialize();
            }
        }

        private static byte[] WaitForOrderFromUDP()
        {
            byte[] udp_rec = m_udp.Receive();
#if RELEASE
            Console.WriteLine("UDP::RX::TRANS::{0}::{1}", System.DateTime.Now.ToString("HH:mm:ss:ffff"), m_udp.identifier_one);
#endif
#if DEBUG
            Console.WriteLine($"Message Received from {m_udp.identifier_one}:{m_udp.identifier_two}");
#endif
            return udp_rec;
        }
    }
}
