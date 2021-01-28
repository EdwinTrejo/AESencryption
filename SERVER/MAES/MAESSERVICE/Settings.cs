using MAESFRAMEWORK.CodeProcessors.UART;
using MAESFRAMEWORK.CodeProcessors.UDP;
using System.Collections.Generic;
using System.Net;
using System.Threading;

namespace MAESSERVICE
{
    public partial class MAESService
    {
        /// <summary>
        /// each buffer can be up to 20mb initially
        /// </summary>
        const int buffer_init_size = 20971520;

        /// <summary>
        /// current_operation = idle state
        /// rest of operations are described in AESMessage
        /// </summary>
        private static volatile int current_operation = 0;

        #region threads
        private static Thread uart_send_svc;
        private static Thread uart_recv_svc;
        private static Thread udp_send_svc;
        private static Thread udp_recv_svc;
        #endregion

        #region locks for the services
        private static object uart_lock = new object();
        private static object udp_lock = new object();
        private static object m_lock = new object();
        #endregion

        #region buffers
        private static byte[] from_uart = new byte[buffer_init_size];
        private static byte[] to_uart = new byte[buffer_init_size];
        private static byte[] from_udp = new byte[buffer_init_size];
        private static byte[] to_udp = new byte[buffer_init_size];
        #endregion

        #region bool for message ready
        private static bool uart_send_ready = false;
        private static bool uart_receive_ready = false;
        private static bool uart_send_complete = false;
        private static bool uart_receive_complete = false;
        private static bool udp_send_ready = false;
        private static bool udp_receive_ready = false;
        private static bool udp_send_complete = false;
        private static bool udp_receive_complete = false;
        #endregion

        #region uart manager settings
        private static UARTManager m_uart;
        private const string uart_port = "COM5";
        private const int baudrate = 9600;
        private const int ReadTimeout = 1500;
        private const int WriteTimeout = 1500;
        #endregion

        #region udp manager settings
        private static UDPManager m_udp;
        private static IPAddress send_ip = IPAddress.Parse("127.0.0.1");
        private const int send_port = 23443;
        private const int receive_port = 23442;
        #endregion
    }
}