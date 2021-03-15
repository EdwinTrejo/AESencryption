using MAESFRAMEWORK.CodeProcessors.UART;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;

namespace MAESSERVICE
{
    public partial class MAESService
    {
        //16 bytes long
        private static byte[] ENCRYPT_INSTRUCTION = Encoding.ASCII.GetBytes("MAESENCRYPTMAESE");
        private static byte[] DECRYPT_INSTRUCTION = Encoding.ASCII.GetBytes("MAESDECRYPTMAESD");
        private const int delay = 1;

        private static void InitUARTService()
        {
            if (m_uart == null)
            {
                m_uart = new UARTManager(uart_port, baudrate, ReadTimeout, WriteTimeout);
                m_uart.Initialize();
            }
        }

        private static byte[] SendEncryptInstruction(byte[] plaintext, byte[] key)
        {
            m_uart.SendTransaction(ENCRYPT_INSTRUCTION, delay);
            m_uart.SendTransaction(plaintext, delay);
            m_uart.SendTransaction(key, delay);
            return m_uart.Receive();
        }

        private static byte[] SendDecryptInstruction(byte[] cyphertext, byte[] key)
        {
            m_uart.SendTransaction(DECRYPT_INSTRUCTION, delay);
            m_uart.SendTransaction(cyphertext, delay);
            m_uart.SendTransaction(key, delay);
            return m_uart.Receive();
        }
    }
}