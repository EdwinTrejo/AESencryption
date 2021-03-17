using MAESFRAMEWORK.CodeProcessors.UART;
using MAESFRAMEWORK.DataTypes.AES;
using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitTests
{
    public class TestingSettings
    {
        #region UART
        public UARTManager m_uart = null;
        public const string uart_port = "COM5";
        public const int baudrate = 115200;
        public const int ReadTimeout = 2000; // -1 infiniteTimeout
        public const int WriteTimeout = 2000; //infiniteTimeout
        public const Handshake handshake = Handshake.None;
        public const Parity parity = Parity.Even;
        public const StopBits stopBits = StopBits.Two;
        public const int send_delay = 10;
        public const int send_delay_for_start = 50;

        //MAESTESTINGMAEST
        //4d41455354455354494e474d41455354
        public readonly byte[] TEST_INSTRUCTION = { 0x4d, 0x41, 0x45, 0x53, 0x54, 0x45, 0x53, 0x54, 0x49, 0x4e, 0x47, 0x4d, 0x41, 0x45, 0x53, 0x54 };

        //MAESENCRYPTMAESE
        //4d414553454e43525950544d41455345
        public readonly byte[] ENCRYPT_INSTRUCTION = { 0x4d, 0x41, 0x45, 0x53, 0x45, 0x4e, 0x43, 0x52, 0x59, 0x50, 0x54, 0x4d, 0x41, 0x45, 0x53, 0x45 };

        //MAESDECRYPTMAESD
        //4d414553444543525950544d41455344
        public readonly byte[] DECRYPT_INSTRUCTION = { 0x4d, 0x41, 0x45, 0x53, 0x44, 0x45, 0x43, 0x52, 0x59, 0x50, 0x54, 0x4d, 0x41, 0x45, 0x53, 0x44 };

        //00112233445566778899aabbccddeeff
        //ABEiM0RVZneImaq7zN3u/w==
        public readonly byte[] TEST_PLAINTEXT = { 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff };

        //2b7e151628aed2a6abf7158809cf4f3c
        //K34VFiiu0qar9xWICc9PPA==
        public readonly byte[] TEST_KEY = { 0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c };

        //8DF4E9AAC5C7573A27D8D055D6E4D64B
        //jfTpqsXHVzon2NBV1uTWSw==
        public readonly byte[] TEST_CYPHERTEXT = { 0x8D, 0xF4, 0xE9, 0xAA, 0xC5, 0xC7, 0x57, 0x3A, 0x27, 0xD8, 0xD0, 0x55, 0xD6, 0xE4, 0xD6, 0x4B };

        // making sure that even null terminators can be sent
        public readonly byte[] TEST_RANDOM_TEXT = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
        #endregion

        #region AES
        public enum MAES_INSTRUCTION { NONE, ENCRYPT, DECRYPT, ENCRYPTRESULT, DECRYPTRESULT, NEWSCHEMA, DELSCHEMA }

        public readonly int SCHEMA_ID = 1;
        public readonly int NEW_SCHEMA_ID = 2;

        public readonly string decrypt_instruction_filepath = @"AES\decrypt_instruction.json";
        public readonly string encrypt_instruction_filepath = @"AES\encrypt_instruction.json";
        public readonly string new_schema_instruction_filepath = @"AES\new_schema.json";
        public readonly string del_schema_instruction_filepath = @"AES\del_schema.json";

        public AESMessage enc_msg, dec_msg, new_msg, del_msg;
        #endregion

        #region ReplacementSchema
        public readonly string broken_json_filepath = @"ReplacementSchema\broken_text.json";
        #endregion
    }
}
