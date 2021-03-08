using MAESFRAMEWORK.CodeProcessors.ReplacementSchema;
using MAESFRAMEWORK.CodeProcessors.UART;
using MAESFRAMEWORK.CodeProcessors.UDP;
using MAESFRAMEWORK.DataTypes.AES;
using System;
using System.Collections.Generic;
using System.Net;
using System.Text;
using System.Threading;

namespace MAESSERVICE
{
    public partial class MAESService
    {
        #region locks for the services
        private static object m_lock = new object();
        #endregion

        #region aes
        private static SchemaManager schemaManager = new SchemaManager();
        private enum MAES_INSTRUCTION { NONE, ENCRYPT, DECRYPT, ENCRYPTRESULT, DECRYPTRESULT, NEWSCHEMA, DELSCHEMA}
        private static Encoding encode_set { get { return Encoding.ASCII; } }
        #endregion

        #region uart manager settings
        private static UARTManager m_uart;
        private const string uart_port = "COM5";
        private const int baudrate = 115200;
        private const int ReadTimeout = 1000;
        private const int WriteTimeout = 2000;
        #endregion

        #region udp manager settings
        private static UDPManager m_udp;
        private static IPAddress send_ip = IPAddress.Parse("127.0.0.1");
        private const int port = 23443;
        #endregion
    }
}