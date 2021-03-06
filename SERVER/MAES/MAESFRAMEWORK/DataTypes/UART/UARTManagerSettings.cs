using MAESFRAMEWORK.DataTypes.Abstraction;
using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Text;

namespace MAESFRAMEWORK.DataTypes.UART
{
    public class UARTManagerSettings : DeviceSettings
    {
        /// <summary>
        /// What COM port is used
        /// </summary>
        public string port;

        /// <summary>
        /// Rate of transmission ex. 115200
        /// </summary>
        public int baudrate;

        /// <summary>
        /// How to long to wait for input
        /// </summary>
        public int ReadTimeout;

        /// <summary>
        /// How long to wait for a read response
        /// </summary>
        public int WriteTimeout;

        /// <summary>
        /// error detection check
        /// </summary>
        public System.IO.Ports.Parity parity;

        /// <summary>
        /// allows for making sure the byte was receiving correctly
        /// </summary>
        public System.IO.Ports.StopBits stopBits;

        /// <summary>
        /// RTC CTS flow controls
        /// </summary>
        public bool enableRtsCts;

        /// <summary>
        /// The device itself
        /// </summary>
        public SerialPort serialPort;
    }
}
