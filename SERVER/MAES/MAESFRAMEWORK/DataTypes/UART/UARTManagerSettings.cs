﻿using MAESFRAMEWORK.DataTypes.Abstraction;
using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Text;

namespace MAESFRAMEWORK.DataTypes.UART
{
    public class UARTManagerSettings : DeviceSettings
    {
        public string port;
        public int baudrate;
        public int ReadTimeout;
        public int WriteTimeout;
        public System.IO.Ports.Parity parity;
        public System.IO.Ports.StopBits stopBits;
        public bool enableRtsCts;
        public SerialPort serialPort;
    }
}
