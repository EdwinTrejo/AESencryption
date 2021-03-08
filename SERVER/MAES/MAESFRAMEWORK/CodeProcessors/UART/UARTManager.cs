using MAESFRAMEWORK.CodeProcessors.Abstraction;
using MAESFRAMEWORK.DataTypes;
using MAESFRAMEWORK.DataTypes.UART;
using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Text;
using System.Threading;

namespace MAESFRAMEWORK.CodeProcessors.UART
{
    public class UARTManager : DeviceManager
    {
        private UARTManagerSettings _manager;

        private static string MSG_RECV = "message_received";

        /// <summary>
        /// Size in bytes
        /// </summary>
        public int MessageSize = 16;

        private bool device_ready;

        public override Encoding encode_set { get { return Encoding.ASCII; } }

        public override bool ready { get { return device_ready; } }

        public bool SendTransaction(byte[] send_trans, bool wait_for_response = true)
        {
            bool transaction_success = false;
            if (Send(send_trans))
            {
                //wait for the arduino to send a response
                Thread.Sleep(1500);
                byte[] get_ret = Receive();
                // correct response
                string compare_str = encode_set.GetString(get_ret);
                if (compare_str == MSG_RECV) transaction_success = true;
                //we dont care if it was received
                else if (wait_for_response == false) transaction_success = true;
            }
            return transaction_success;
        }

        public override bool Send(byte[] message)
        {
            bool message_send_success = false;
            try
            {
#if DEBUG
                Console.WriteLine($"{_manager.DeviceName }::TX::{BitConverter.ToString(message)}");
#endif
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
#if DEBUG
            Console.WriteLine($"{_manager.DeviceName }::RX::{BitConverter.ToString(return_message)}");
#endif
            return return_message;
        }

        public override void Initialize()
        {
            _manager.serialPort = new SerialPort(_manager.port, _manager.baudrate);
            _manager.serialPort.ReadTimeout = _manager.ReadTimeout;
            _manager.serialPort.WriteTimeout = _manager.WriteTimeout;
            _manager.serialPort.Parity = _manager.parity;
            _manager.serialPort.StopBits = _manager.stopBits;
            _manager.serialPort.RtsEnable = _manager.enableRtsCts;
            try
            {
                _manager.serialPort.Open();
                Console.WriteLine($"started {_manager.DeviceName} service");
                device_ready = true;
            }
            catch (Exception e)
            {
                string[] ports = SerialPort.GetPortNames();
                Console.WriteLine("Available Ports");
                foreach (string port in ports) { Console.WriteLine(port); }
            }
        }

        public UARTManager(string port, int baudrate, int ReadTimeout, int WriteTimeout, bool enableRtsCts = false, System.IO.Ports.Parity parity = Parity.Even, System.IO.Ports.StopBits stopBits = StopBits.Two)
        {
            _manager = new UARTManagerSettings();
            _manager.DeviceName = $"UART::{port}";
            identifier_one = port;
            identifier_two = baudrate.ToString();
            _manager.port = port;
            _manager.baudrate = baudrate;
            _manager.ReadTimeout = ReadTimeout;
            _manager.WriteTimeout = WriteTimeout;
            _manager.parity = parity;
            _manager.stopBits = stopBits;
            _manager.enableRtsCts = enableRtsCts;
            device_ready = false;
        }

        ~UARTManager()
        {
            //close gracefully
            device_ready = false;
            //_manager.serialPort.Close();
        }
    }
}