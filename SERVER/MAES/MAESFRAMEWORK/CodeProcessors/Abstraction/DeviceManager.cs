using MAESFRAMEWORK.DataTypes;
using System;
using System.Collections.Generic;
using System.Text;

namespace MAESFRAMEWORK.CodeProcessors.Abstraction
{
    public abstract class DeviceManager
    {
        /// <summary>
        /// ready for use
        /// </summary>
        public abstract bool ready { get; }

        /// <summary>
        /// Encoder type to use
        /// </summary>
        public abstract Encoding encode_set { get; }

        /// <summary>
        /// Encoder type to use for user input
        /// </summary>
        public abstract Encoding user_encode_set { get; }

        /// <summary>
        /// name, ip, or port some sort of identifier
        /// </summary>
        public string identifier_one { get; set; }

        /// <summary>
        /// name, ip, or port some sort of identifier
        /// </summary>
        public string identifier_two { get; set; }

        /// <summary>
        /// Send a message
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
        public abstract bool Send(byte[] message);

        /// <summary>
        /// wait for a message
        /// </summary>
        /// <returns></returns>
        public abstract byte[] Receive();

        /// <summary>
        /// Start up service
        /// </summary>
        public abstract void Initialize();
    }
}