using MAESFRAMEWORK.CodeProcessors.UART;
using System.Text;
using System.Threading;
using System.IO.Ports;
using System.Collections.Generic;
using NUnit.Framework;

namespace UnitTests.UART
{
    [TestFixture]
    [Category("UART")]
    public class UARTTests : TestingUtilities
    {
        [OneTimeSetUp]
        public void Init()
        {
            ResetUARTDevice();
        }

        [OneTimeTearDown]
        public void Cleanup()
        {
            m_uart.Close();
        }

        [Test, Order(0)]
        public void StartUpTest()
        {
            Thread.Sleep(send_delay_for_start);
            Assert.AreEqual(true, m_uart.ready);
            bool instruction_transmit_success = m_uart.SendTransaction(TEST_INSTRUCTION, send_delay);
            Assert.AreEqual(true, instruction_transmit_success);
        }

        [Test, Order(1)]
        public void UARTSendTest()
        {
            Thread.Sleep(send_delay_for_start);
            bool instruction_transmit_success = m_uart.SendTransaction(ENCRYPT_INSTRUCTION, send_delay);
            bool plaintext_transmit_success = m_uart.SendTransaction(TEST_RANDOM_TEXT, send_delay);
            bool cyphertext_transmit_success = m_uart.SendTransaction(TEST_RANDOM_TEXT, send_delay);
            m_uart.Receive();

            //the asserts are checked later so as to not delay the tests
            Assert.AreEqual(true, instruction_transmit_success);
            Assert.AreEqual(true, plaintext_transmit_success);
            Assert.AreEqual(true, cyphertext_transmit_success);
        }

        [Test, Order(2)]
        public void UARTEncryption()
        {
            Thread.Sleep(send_delay_for_start);
            m_uart.SendTransaction(ENCRYPT_INSTRUCTION, send_delay);
            m_uart.SendTransaction(TEST_PLAINTEXT, send_delay);
            m_uart.SendTransaction(TEST_KEY, send_delay);
            byte[] encrypt_result = m_uart.Receive();

            Assert.AreEqual(16, encrypt_result.Length);
            List<byte> cyphertext_bytes = new List<byte>(TEST_CYPHERTEXT);
            List<byte> encrypt_result_bytes = new List<byte>(encrypt_result);
            CollectionAssert.AreEqual(cyphertext_bytes, encrypt_result_bytes);
        }

        [Test, Order(3)]
        public void UARTDecryption()
        {
            Thread.Sleep(send_delay_for_start);
            m_uart.SendTransaction(DECRYPT_INSTRUCTION, send_delay);
            m_uart.SendTransaction(TEST_CYPHERTEXT, send_delay);
            m_uart.SendTransaction(TEST_KEY, send_delay);
            byte[] decrypt_result = m_uart.Receive();

            Assert.AreEqual(16, decrypt_result.Length);
            List<byte> plaintext_bytes = new List<byte>(TEST_PLAINTEXT);
            List<byte> decrypt_result_bytes = new List<byte>(decrypt_result);
            CollectionAssert.AreEqual(plaintext_bytes, decrypt_result_bytes);
        }
    }
}
