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
        private readonly UARTManagerSettings _manager;

        private static readonly string MSG_RECV = "message_received";

        /// <summary>
        /// Size in bytes
        /// </summary>
        public int MessageSize = 16;

        private bool device_ready;

        public override Encoding encode_set { get { return Encoding.ASCII; } }
        public override Encoding user_encode_set { get { return Encoding.UTF8; } }

        public override bool ready { get { return device_ready; } }

        public bool SendTransaction(byte[] send_trans, int send_delay, bool wait_for_response = true)
        {
            bool transaction_success = false;
            if (Send(send_trans))
            {
                //wait for the arduino to send a response
                byte[] get_ret = Receive(send_delay);
                // correct response
                string compare_str = user_encode_set.GetString(get_ret);
                if (compare_str == MSG_RECV) transaction_success = true;
                //we dont care if it was received
                else if (wait_for_response == false) transaction_success = true;
            }
            //var GetCurrentStream = _manager.serialPort.BaseStream;
            return transaction_success;
        }

        public override bool Send(byte[] message)
        {
#if RELEASE
            Console.WriteLine("{0}::TX::TRANS::{1}", _manager.DeviceName, System.DateTime.Now.ToString("HH:mm:ss:ffff"));
#endif
            bool message_send_success = false;
            try
            {
                _manager.serialPort.DiscardInBuffer();
                _manager.serialPort.DiscardOutBuffer();
#if DEBUG
                Console.WriteLine("{0}::TX::{1}", _manager.DeviceName, BitConverter.ToString(message));
#endif
                _manager.serialPort.Write(message, 0, MessageSize);
                message_send_success = true;
            }
            catch (Exception ex)
            {
#if DEBUG
                Console.WriteLine(ex.StackTrace);
#endif
            }
            return message_send_success;
        }

        public byte[] Receive(int delay)
        {
            Thread.Sleep(delay);
            return Receive();
        }

        public override byte[] Receive()
        {
#if RELEASE
            Console.WriteLine("{0}::RX::TRANS::{1}", _manager.DeviceName, System.DateTime.Now.ToString("HH:mm:ss:ffff"));
#endif
            byte[] return_message = new byte[MessageSize];
            try
            {
                _manager.serialPort.Read(return_message, 0, MessageSize);
                string recv_msg = user_encode_set.GetString(return_message);
#if DEBUG
                Console.WriteLine("{0}::RX::STR::{1}", _manager.DeviceName, BitConverter.ToString(return_message));
#endif
            }
            catch (Exception ex)
            {
#if DEBUG
                Console.WriteLine(ex.StackTrace);
#endif
            }
            return return_message;
        }

        public override void Initialize()
        {
            _manager.serialPort = new SerialPort(_manager.port, _manager.baudrate, _manager.parity, _manager.databits, _manager.stopBits);
            _manager.serialPort.ReadTimeout = _manager.ReadTimeout;
            _manager.serialPort.WriteTimeout = _manager.WriteTimeout;
            _manager.serialPort.Handshake = _manager.handshake;
            _manager.serialPort.Encoding = encode_set;
            _manager.serialPort.DiscardNull = false;
            try
            {
                _manager.serialPort.Open();
                _manager.serialPort.DiscardOutBuffer();
                _manager.serialPort.DiscardInBuffer();
                Console.WriteLine("{0}::SERVICE::START", _manager.DeviceName);
                device_ready = true;
            }
            catch (Exception ex)
            {
#if DEBUG
                Console.WriteLine(ex.StackTrace);
#endif
                string[] ports = SerialPort.GetPortNames();
                Console.WriteLine("Available Ports");
                foreach (string port in ports) { Console.WriteLine(port); }
            }
        }

        public UARTManager(string port, int baudrate, int ReadTimeout, int WriteTimeout, System.IO.Ports.Handshake handshake, System.IO.Ports.Parity parity, System.IO.Ports.StopBits stopBits, int databits)
        {
            _manager = new UARTManagerSettings()
            {
                DeviceName = $"UART::{port}",
                port = port,
                baudrate = baudrate,
                ReadTimeout = ReadTimeout,
                WriteTimeout = WriteTimeout,
                parity = parity,
                stopBits = stopBits,
                handshake = handshake,
                databits = databits
            };

            identifier_one = port;
            identifier_two = baudrate.ToString();
            device_ready = false;
        }

        public void Open()
        {
            if (_manager.serialPort != null & !_manager.serialPort.IsOpen)
            {
                Console.WriteLine("{0}::SERVICE::START", _manager.DeviceName);
                _manager.serialPort.Open();
                device_ready = true;
            }
        }

        public void Close()
        {
            if (_manager.serialPort != null & _manager.serialPort.IsOpen)
            {
                Console.WriteLine("{0}::SERVICE::STOP", _manager.DeviceName);
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
