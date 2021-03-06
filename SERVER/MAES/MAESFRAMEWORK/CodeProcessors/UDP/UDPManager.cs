using MAESFRAMEWORK.CodeProcessors.Abstraction;
using MAESFRAMEWORK.DataTypes.UDP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace MAESFRAMEWORK.CodeProcessors.UDP
{
    public class UDPManager : DeviceManager
    {
        private UDPManagerSettings _manager;

        /// <summary>
        /// Size in bytes
        /// </summary>
        public int MessageSize = 1;

        private bool device_ready;

        public override Encoding encode_set { get { return Encoding.ASCII; } }

        public override bool ready { get { return device_ready; } }

        public override bool Send(byte[] message)
        {
            bool message_send_success = false;
            try
            {
                _manager.send_client.Send(message, message.Length, _manager.send_ip.ToString(), _manager.send_port);
                identifier_two = _manager.send_port.ToString();
                message_send_success = true;
            }
            catch (Exception e) { Console.WriteLine(e.StackTrace); }
            return message_send_success;
        }

        public override byte[] Receive()
        {
            byte[] receiveBytes = _manager.receive_client.Receive(ref _manager.RemoteIpEndPoint);
            if (_manager.RemoteIpEndPoint.Address != _manager.send_ip)
            {
                _manager.send_ip = _manager.RemoteIpEndPoint.Address;
                identifier_one = _manager.RemoteIpEndPoint.Address.ToString();
                identifier_two = _manager.receive_port.ToString();
            }
            return receiveBytes;
        }

        public override void Initialize()
        {
            _manager.send_client = new UdpClient(_manager.send_port);
            _manager.receive_client = new UdpClient(_manager.receive_port);
        }

        public UDPManager(IPAddress send_ip, int send_port, int receive_port)
        {
            _manager = new UDPManagerSettings();
            _manager.DeviceName = $"UDP::{send_ip}::{send_port}::{receive_port}";
            identifier_one = send_ip.ToString();
            identifier_two = send_port.ToString();
            _manager.send_ip = send_ip;
            _manager.send_port = send_port;
            _manager.receive_port = receive_port;
            device_ready = false;
        }

        ~UDPManager()
        {
            //close gracefully
            device_ready = false;
            _manager.receive_client.Close();
            _manager.send_client.Close();
        }
    }
}
