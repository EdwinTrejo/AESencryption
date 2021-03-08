using MAESFRAMEWORK.CodeProcessors.UART;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Text;
using System.Threading;

namespace UnitTests
{
    [TestClass]
    public class UARTTests
    {
        private static UARTManager m_uart;
        private const string uart_port = "COM5";
        private const int baudrate = 115200;
        private const int ReadTimeout = 1000;
        private const int WriteTimeout = 2000;

        private static byte[] ENCRYPT_INSTRUCTION = Encoding.ASCII.GetBytes("MAESENCRYPTMAESE");
        private static byte[] DECRYPT_INSTRUCTION = Encoding.ASCII.GetBytes("MAESDECRYPTMAESD");

        // 00112233445566778899aabbccddeeff
        private static byte[] plaintext = { 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff };
        // 2b7e151628aed2a6abf7158809cf4f3c
        private static byte[] key = { 0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c };
        // 8DF4E9AA C5C7573A 27D8D055 D6E4D64B
        private static byte[] cyphertext = { 0x8D, 0xF4, 0xE9, 0xAA, 0xC5, 0xC7, 0x57, 0x3A, 0x27, 0xD8, 0xD0, 0x55, 0xD6, 0xE4, 0xD6, 0x4B };
        
        private static byte[] static_text = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };

        [TestMethod]
        public void UARTSendTest()
        {
            m_uart = new UARTManager(uart_port, baudrate, ReadTimeout, WriteTimeout);
            m_uart.Initialize();
            bool instruction_transmit_success = m_uart.SendTransaction(ENCRYPT_INSTRUCTION);
            Assert.AreEqual(true, instruction_transmit_success);

            bool plaintext_transmit_success = m_uart.SendTransaction(static_text);
            Assert.AreEqual(true, plaintext_transmit_success);

            bool cyphertext_transmit_success = m_uart.SendTransaction(static_text);
            Assert.AreEqual(true, cyphertext_transmit_success);

            Thread.Sleep(1000);
        }

        [TestMethod]
        public void UARTEncryption()
        {
            m_uart = new UARTManager(uart_port, baudrate, ReadTimeout, WriteTimeout);
            m_uart.Initialize();

            m_uart.SendTransaction(ENCRYPT_INSTRUCTION);
            m_uart.SendTransaction(plaintext);
            m_uart.SendTransaction(key);
            Thread.Sleep(4000);
            var result = m_uart.Receive();
            result = m_uart.Receive();
            result = m_uart.Receive();
        }
    }
}
