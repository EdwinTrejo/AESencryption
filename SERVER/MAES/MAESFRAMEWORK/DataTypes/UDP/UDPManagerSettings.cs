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
        /// <summary>
        /// Replaceable IP for the current device we are servicing
        /// </summary>
        public IPAddress send_ip;

        /// <summary>
        /// MAES port for default operations
        /// </summary>
        public int send_port;

        /// <summary>
        /// Ideally same as the default port
        /// </summary>
        public int receive_port;

        /// <summary>
        /// UDP client to send data
        /// </summary>
        public UdpClient send_client;

        /// <summary>
        /// UDP client to just receive data
        /// </summary>
        public UdpClient receive_client;

        /// <summary>
        /// remote ip endpoint for the receive_client to listen to all
        /// </summary>
        public IPEndPoint RemoteIpEndPoint = new IPEndPoint(IPAddress.Any, 0);
    }
}
