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
        public override Encoding user_encode_set { get { return Encoding.UTF8; } }

        public override bool ready { get { return device_ready; } }

        public bool SendTransaction(byte[] send_trans, bool wait_for_response = true)
        {
            bool transaction_success = false;
            if (Send(send_trans))
            {
                //wait for the arduino to send a response
                byte[] get_ret = Receive();
                // correct response
                string compare_str = user_encode_set.GetString(get_ret);
                if (compare_str == MSG_RECV) transaction_success = true;
                //we dont care if it was received
                else if (wait_for_response == false) transaction_success = true;
            }
            return transaction_success;
        }

        public bool SendTransaction(string message, bool wait_for_response = true)
        {
            bool transaction_success = false;
            if (Send(message))
            {
                //wait for the arduino to send a response
                byte[] get_ret = Receive();
                // correct response
                string compare_str = user_encode_set.GetString(get_ret);
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
                Console.WriteLine($"{_manager.DeviceName}::TX::{BitConverter.ToString(message)}");
#endif
                _manager.serialPort.Write(message, 0, MessageSize);
                message_send_success = true;
            }
            catch (Exception ex)
            {
                _manager.serialPort.DiscardOutBuffer();
#if DEBUG
                Console.WriteLine(ex.StackTrace);
#endif
            }
            return message_send_success;
        }

        public bool Send(string message)
        {
            bool message_send_success = false;
            try
            {
#if DEBUG
                Console.WriteLine($"{_manager.DeviceName}::TX::{message}");
#endif
                _manager.serialPort.Write(message);
                message_send_success = true;
            }
            catch (Exception ex)
            {
                _manager.serialPort.DiscardOutBuffer();
#if DEBUG
                Console.WriteLine(ex.StackTrace);
#endif
            }
            return message_send_success;
        }

        public override byte[] Receive()
        {
            byte[] return_message = new byte[MessageSize];
            Thread.Sleep(1000);
            try
            {
                _manager.serialPort.Read(return_message, 0, MessageSize);
                string recv_msg = user_encode_set.GetString(return_message);
#if DEBUG
                Console.WriteLine($"{_manager.DeviceName}::RX::STR::{BitConverter.ToString(return_message)}");
                //Console.WriteLine($"{_manager.DeviceName }::RX::STR::{recv_msg}");
#endif
            }
            catch (Exception ex)
            {
                _manager.serialPort.DiscardInBuffer();
#if DEBUG
                Console.WriteLine(ex.StackTrace);
#endif
            }
            return return_message;
        }

        public byte[] ReceiveByByte()
        {
            List<byte> recv_msg = new List<byte>();
            for (int i = 0; i < MessageSize; i++)
            {
                byte[] current_hex = new byte[1];
                _manager.serialPort.Read(current_hex, 0, 1);
                recv_msg.Add(current_hex[0]);
            }
#if DEBUG
            Console.WriteLine($"{_manager.DeviceName}::RX::BYT::{BitConverter.ToString(recv_msg.ToArray())}");
#endif
            return recv_msg.ToArray();
        }

        public override void Initialize()
        {
            _manager.serialPort = new SerialPort(_manager.port, _manager.baudrate, _manager.parity, _manager.databits, _manager.stopBits);
            _manager.serialPort.ReadTimeout = _manager.ReadTimeout;
            _manager.serialPort.WriteTimeout = _manager.WriteTimeout;
            _manager.serialPort.Handshake = _manager.handshake;
            _manager.serialPort.Encoding = encode_set;
            try
            {
                _manager.serialPort.Open();
                _manager.serialPort.DiscardOutBuffer();
                _manager.serialPort.DiscardInBuffer();
                Console.WriteLine($"{_manager.DeviceName}::SERVICE::START");
                device_ready = true;
            }
            catch (Exception ex)
            {
                string[] ports = SerialPort.GetPortNames();
                Console.WriteLine("Available Ports");
                foreach (string port in ports) { Console.WriteLine(port); }
            }
        }

        public UARTManager(string port, int baudrate, int ReadTimeout, int WriteTimeout, System.IO.Ports.Handshake handshake = Handshake.RequestToSend, System.IO.Ports.Parity parity = Parity.Even, System.IO.Ports.StopBits stopBits = StopBits.Two, int databits = 8)
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
            _manager.handshake = handshake;
            _manager.databits = databits;
            device_ready = false;
        }

        public void Open()
        {
            if (_manager.serialPort != null & !_manager.serialPort.IsOpen)
            {
                Console.WriteLine($"{_manager.DeviceName}::SERVICE::START");
                _manager.serialPort.Open();
                device_ready = true;
            }
        }

        public void Close()
        {
            if (_manager.serialPort != null & _manager.serialPort.IsOpen)
            {
                Console.WriteLine($"{_manager.DeviceName}::SERVICE::STOP");
                _manager.serialPort.Close();
                device_ready = false;
            }
        }

        ~UARTManager()
        {
            //close gracefully
            Close();
        }
    }
}
