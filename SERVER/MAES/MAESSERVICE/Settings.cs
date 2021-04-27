using MAESFRAMEWORK.CodeProcessors.ReplacementSchema;
using MAESFRAMEWORK.CodeProcessors.UART;
using MAESFRAMEWORK.CodeProcessors.UDP;
using MAESFRAMEWORK.DataTypes.AES;
using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Net;
using System.Text;
using System.Threading;

namespace MAESSERVICE
{
    public partial class MAESService
    {
        #region aes
        private static SchemaManager schemaManager = new SchemaManager();
        #endregion

        #region constants
        private enum MAES_INSTRUCTION { NONE, ENCRYPT, DECRYPT, ENCRYPTRESULT, DECRYPTRESULT, NEWSCHEMA, DELSCHEMA, NEWSCHEMARESULT, ERRORRESULT }
        private static Encoding encode_set { get { return Encoding.ASCII; } }

        //MAESTESTINGMAEST
        private static readonly byte[] TEST_INSTRUCTION = { 0x4d, 0x41, 0x45, 0x53, 0x54, 0x45, 0x53, 0x54, 0x49, 0x4e, 0x47, 0x4d, 0x41, 0x45, 0x53, 0x54 };

        //MAESENCRYPTMAESE
        private static readonly byte[] ENCRYPT_INSTRUCTION = { 0x4d, 0x41, 0x45, 0x53, 0x45, 0x4e, 0x43, 0x52, 0x59, 0x50, 0x54, 0x4d, 0x41, 0x45, 0x53, 0x45 };

        //MAESDECRYPTMAESD
        private static readonly byte[] DECRYPT_INSTRUCTION = { 0x4d, 0x41, 0x45, 0x53, 0x44, 0x45, 0x43, 0x52, 0x59, 0x50, 0x54, 0x4d, 0x41, 0x45, 0x53, 0x44 };
        #endregion

        #region uart manager settings
        private static UARTManager m_uart;
        private const string uart_port = "COM5";
        private const int baudrate = 115200;
        private const int ReadTimeout = 1000;
        private const int WriteTimeout = 1000;
        private const Handshake handshake = Handshake.None;
        private const Parity parity = Parity.Even;
        private const StopBits stopBits = StopBits.Two;
        private const int dataBits = 8;
        private const int send_delay = 10;
        #endregion

        #region udp manager settings
        private static UDPManager m_udp;
        private static IPAddress send_ip = IPAddress.Parse("127.0.0.1");
        private const int port = 23443;
        #endregion
    }
}