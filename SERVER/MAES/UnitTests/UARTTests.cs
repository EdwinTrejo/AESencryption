using MAESFRAMEWORK.CodeProcessors.UART;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Text;
using System.Threading;
using System.IO.Ports;
using System.Collections.Generic;

namespace UnitTests
{
    [TestClass]
    public class UARTTests
    {
        private static UARTManager m_uart = null;
        private const string uart_port = "COM5";
        private const int baudrate = 38400;
        private const int ReadTimeout = 6000; // -1 infiniteTimeout
        private const int WriteTimeout = 6000; //infiniteTimeout
        private const Handshake handshake = Handshake.None;
        private const Parity parity = Parity.Even;
        private const StopBits stopBits = StopBits.Two;

        //MAESENCRYPTMAESE
        //4d414553454e43525950544d41455345
        private static byte[] ENCRYPT_INSTRUCTION = { 0x4d, 0x41, 0x45, 0x53, 0x45, 0x4e, 0x43, 0x52, 0x59, 0x50, 0x54, 0x4d, 0x41, 0x45, 0x53, 0x45 };

        //MAESDECRYPTMAESD
        //4d414553444543525950544d41455344
        private static byte[] DECRYPT_INSTRUCTION = { 0x4d, 0x41, 0x45, 0x53, 0x44, 0x45, 0x43, 0x52, 0x59, 0x50, 0x54, 0x4d, 0x41, 0x45, 0x53, 0x44 };

        // 00112233445566778899aabbccddeeff
        private static byte[] plaintext = { 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff };
        
        // 2b7e151628aed2a6abf7158809cf4f3c
        private static byte[] key = { 0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c };
        
        // 8DF4E9AAC5C7573A27D8D055D6E4D64B
        private static byte[] cyphertext = { 0x8D, 0xF4, 0xE9, 0xAA, 0xC5, 0xC7, 0x57, 0x3A, 0x27, 0xD8, 0xD0, 0x55, 0xD6, 0xE4, 0xD6, 0x4B };

        // making sure that even null terminators can be sent
        private static byte[] static_text = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };

        [TestMethod]
        public void UARTSendTest()
        {
            ResetUARTDevice();
            bool instruction_transmit_success = false;
            bool plaintext_transmit_success = false;
            bool cyphertext_transmit_success = false;

            //clear out garbage
            m_uart.SendTransaction(static_text);

            instruction_transmit_success = m_uart.SendTransaction(ENCRYPT_INSTRUCTION);
            plaintext_transmit_success = m_uart.SendTransaction(static_text);
            cyphertext_transmit_success = m_uart.SendTransaction(static_text);
            Thread.Sleep(2000);
            m_uart.Receive();
            m_uart.Close();

            //the asserts are checked later so as to not delay the tests
            Assert.AreEqual(true, instruction_transmit_success);
            Assert.AreEqual(true, plaintext_transmit_success);
            Assert.AreEqual(true, cyphertext_transmit_success);
        }

        [TestMethod]
        public void UARTEncryption()
        {
            ResetUARTDevice();
            
            //clear out garbage
            m_uart.SendTransaction(static_text);

            m_uart.SendTransaction(ENCRYPT_INSTRUCTION);
            m_uart.SendTransaction(plaintext);
            m_uart.SendTransaction(key);
            Thread.Sleep(2000);
            //0x8D, 0xF4, 0xE9, 0xAA, 0xC5, 0xC7, 0x57, 0x3A, 0x27, 0xD8, 0xD0, 0x55, 0xD6, 0xE4, 0xD6, 0x4B
            byte[] encrypt_result = m_uart.Receive();
            m_uart.Close();

            //Assert.AreEqual(cyphertext, encrypt_result);
            List<byte> cyphertext_bytes = new List<byte>(cyphertext);
            List<byte> encrypt_result_bytes = new List<byte>(encrypt_result);
            CollectionAssert.AreEqual(cyphertext_bytes, encrypt_result_bytes);
        }

        [TestMethod]
        public void UARTDecryption()
        {
            ResetUARTDevice();
            
            //clear out garbage
            m_uart.SendTransaction(static_text);

            m_uart.SendTransaction(DECRYPT_INSTRUCTION);
            m_uart.SendTransaction(cyphertext);
            m_uart.SendTransaction(key);
            Thread.Sleep(2000);
            //0x8D, 0xF4, 0xE9, 0xAA, 0xC5, 0xC7, 0x57, 0x3A, 0x27, 0xD8, 0xD0, 0x55, 0xD6, 0xE4, 0xD6, 0x4B
            byte[] decrypt_result = m_uart.Receive();
            m_uart.Close();

            //Assert.AreEqual(cyphertext, encrypt_result);
            List<byte> plaintext_bytes = new List<byte>(plaintext);
            List<byte> decrypt_result_bytes = new List<byte>(decrypt_result);
            CollectionAssert.AreEqual(plaintext_bytes, decrypt_result_bytes);
        }

        public void ResetUARTDevice()
        {
            if (m_uart != null)
            {
                m_uart.Close();
                m_uart.Open();
            }
            else
            {
                m_uart = new UARTManager(uart_port, baudrate, ReadTimeout, WriteTimeout, handshake, parity, stopBits);
                if (!m_uart.ready)
                {
                    m_uart.Initialize();
                }
            }
            Thread.Sleep(1000);
        }
    }
}
