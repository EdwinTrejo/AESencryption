using MAESFRAMEWORK.DataTypes.Abstraction;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace MAESFRAMEWORK.DataTypes.UDP
{
    public class UDPManagerSettings : DeviceSettings
    {
        public IPAddress send_ip;
        public int send_port;
        public int receive_port;
        public UdpClient send_client;
        public UdpClient receive_client;
        public IPEndPoint RemoteIpEndPoint = new IPEndPoint(IPAddress.Any, 0);
    }
}
