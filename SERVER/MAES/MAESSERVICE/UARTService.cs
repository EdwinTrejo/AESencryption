using MAESFRAMEWORK.CodeProcessors.UART;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;

namespace MAESSERVICE
{
    public partial class MAESService
    {
        private static void UARTServiceSend()
        {
            //thread init
            lock (uart_lock)
            {
                if (m_uart != null && !m_uart.ready)
                {
                    m_uart = new UARTManager(uart_port, baudrate, ReadTimeout, WriteTimeout);
                    m_uart.Initialize();
                }
            }

            while (true)
            {
                //wait for send message
                if (uart_send_ready && m_uart.ready)
                {
                    lock (uart_lock)
                    {
                        uart_send_complete = false;
                        foreach (byte sendbyte in to_uart)
                        {
                            uart_send_complete = m_uart.Send(new byte[] { sendbyte });
                        }
                    }
                }
                Thread.Sleep(1000);
            }
        }

        private static void UARTServiceReceive()
        {
            //thread init
            lock (uart_lock)
            {
                if (m_uart != null && !m_uart.ready)
                {
                    m_uart = new UARTManager(uart_port, baudrate, ReadTimeout, WriteTimeout);
                    m_uart.Initialize();
                }
            }

            while (true)
            {
                //wait for receive message
                if (uart_receive_ready && m_uart.ready)
                {
                    lock (uart_lock)
                    {
                        uart_receive_complete = false;
                        byte[] uart_rec = m_uart.Receive();
                        from_uart = uart_rec;
                        uart_receive_complete = true;
                    }
                }
                Thread.Sleep(1000);
            }
        }
    }
}