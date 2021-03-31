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

        private bool device_ready;

        public override Encoding encode_set { get { return Encoding.ASCII; } }
        public override Encoding user_encode_set { get { return Encoding.ASCII; } }

        public override bool ready { get { return device_ready; } }

        public override bool Send(byte[] message)
        {
            bool message_send_success = false;
            try
            {
                _manager.client.Send(message, message.Length, _manager.send_ip.ToString(), _manager.port);
                identifier_two = _manager.port.ToString();
                message_send_success = true;
            }
            catch (Exception e) { Console.WriteLine(e.StackTrace); }
            return message_send_success;
        }

        public override byte[] Receive()
        {
            byte[] receiveBytes = _manager.client.Receive(ref _manager.RemoteIpEndPoint);
            if (_manager.RemoteIpEndPoint.Address != _manager.send_ip)
            {
                _manager.send_ip = _manager.RemoteIpEndPoint.Address;
                _manager.port = _manager.RemoteIpEndPoint.Port;
                identifier_one = _manager.RemoteIpEndPoint.Address.ToString();
                //identifier_two = _manager.port.ToString();
                identifier_two = _manager.RemoteIpEndPoint.Port.ToString();
            }
            return receiveBytes;
        }

        public override void Initialize()
        {
            _manager.client = new UdpClient(_manager.port);
            Console.WriteLine($"UDP::{_manager.DeviceName}::SERVICE::START");
        }

        public UDPManager(IPAddress send_ip, int port)
        {
            _manager = new UDPManagerSettings();
            _manager.DeviceName = $"UDP::{send_ip}::{port}";
            identifier_one = send_ip.ToString();
            identifier_two = port.ToString();
            _manager.send_ip = send_ip;
            _manager.port = port;
            device_ready = false;
        }

        ~UDPManager()
        {
            //close gracefully
            device_ready = false;
            _manager.client.Close();
        }
    }
}
