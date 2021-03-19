using MAESFRAMEWORK.CodeProcessors.UART;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;

namespace MAESSERVICE
{
    public partial class MAESService
    {
        private static void InitUARTService()
        {
            if (m_uart == null)
            {
                m_uart = new UARTManager(uart_port, baudrate, ReadTimeout, WriteTimeout, handshake, parity, stopBits, dataBits);
                m_uart.Initialize();
            }
        }

        private static byte[] SendEncryptInstruction(byte[] plaintext, byte[] key)
        {
            m_uart.SendTransaction(ENCRYPT_INSTRUCTION, send_delay);
            m_uart.SendTransaction(plaintext, send_delay);
            m_uart.SendTransaction(key, send_delay);
            return m_uart.Receive(send_delay);
        }

        private static byte[] SendDecryptInstruction(byte[] cyphertext, byte[] key)
        {
            m_uart.SendTransaction(DECRYPT_INSTRUCTION, send_delay);
            m_uart.SendTransaction(cyphertext, send_delay);
            m_uart.SendTransaction(key, send_delay);
            return m_uart.Receive(send_delay);
        }
    }
}