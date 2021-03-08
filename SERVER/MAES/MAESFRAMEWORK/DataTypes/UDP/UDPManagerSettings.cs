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
        public int port;

        /// <summary>
        /// UDP client
        /// </summary>
        public UdpClient client;

        /// <summary>
        /// remote ip endpoint for the receive_client to listen to all
        /// </summary>
        public IPEndPoint RemoteIpEndPoint = new IPEndPoint(IPAddress.Any, 0);
    }
}
