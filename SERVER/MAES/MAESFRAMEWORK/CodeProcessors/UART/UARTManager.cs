using MAESFRAMEWORK.CodeProcessors.Abstraction;
using MAESFRAMEWORK.DataTypes;
using MAESFRAMEWORK.DataTypes.UART;
using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Text;

namespace MAESFRAMEWORK.CodeProcessors.UART
{
    public class UARTManager : DeviceManager
    {
        private UARTManagerSettings _manager;

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
                _manager.serialPort.Write(message, 0, MessageSize);
                message_send_success = true;
            }
            catch (Exception e) { Console.WriteLine(e.StackTrace); }
            return message_send_success;
        }

        public override byte[] Receive()
        {
            byte[] return_message = new byte[MessageSize];
            _manager.serialPort.Read(return_message, 0, MessageSize);
            return return_message;
        }

        public override void Initialize()
        {
            _manager.serialPort = new SerialPort(_manager.port, _manager.baudrate);
            _manager.serialPort.ReadTimeout = _manager.ReadTimeout;
            _manager.serialPort.WriteTimeout = _manager.WriteTimeout;
            try
            {
                _manager.serialPort.Open();
                Console.WriteLine($"started {_manager.name} service");
                device_ready = true;
            }
            catch (Exception e)
            {
                string[] ports = SerialPort.GetPortNames();
                Console.WriteLine("Available Ports");
                foreach (string port in ports) { Console.WriteLine(port); }
            }
        }

        public UARTManager(string port, int baudrate, int ReadTimeout, int WriteTimeout)
        {
            _manager = new UARTManagerSettings();
            _manager.name = $"UART::{port}";
            identifier_one = port;
            identifier_two = baudrate.ToString();
            _manager.port = port;
            _manager.baudrate = baudrate;
            _manager.ReadTimeout = ReadTimeout;
            _manager.WriteTimeout = WriteTimeout;
            device_ready = false;
        }

        ~UARTManager()
        {
            //close gracefully
            device_ready = false;
            _manager.serialPort.Close();
        }
    }
}