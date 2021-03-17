using MAESFRAMEWORK.CodeProcessors.ReplacementSchema;
using MAESFRAMEWORK.DataTypes.ReplacementSchema;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;

namespace UnitTests.ReplacementSchema
{
    // no clue why that's not working
    [TestFixture]
    [Category("ReplacementSchema")]
    public class ReplacementSchemaTests
    {
        // add things here
        private SchemaManager m_schema = null;

        // actually needs to be of type char replaced text
        private readonly byte[] CHAR_PLAINTEXT = { };

        // needs to be a ReplacedMessage
        private readonly byte[] CYPHERTEXT = { };

        [OneTimeSetUp]
        public void Init()
        {
            m_schema = new SchemaManager();
        }

        [OneTimeTearDown]
        public void Cleanup()
        {
            // 
        }

        // add schema to list of schemas

        // test adding an external schema 
        // test create schema (creating correct # of schemas)
        // test delete schema, ensure it deletes schema
        // using externally added schema, test character replacement gets correct output
        // using external schema, test replacement (going back to normal)

        [Test, Order(0)]
        public void ReplacePlaintextTest()
        {
            int num = m_schema.RequestNewSchema();

            //ReplacedMessage return_replaced_message = m_schema.CharacterReplacePlaintext(CHAR_PLAINTEXT);
            //Assert.AreEqual(true, return_replaced_message.replacedTexts); // this needs to be fixed a lot
        }

        [Test, Order(1)]
        public void ReplaceCyphertextTest()
        {
            //CharReplacedText replaced_text = m_schema.CharacterReplaceCyphertext(CYPHERTEXT);
            //Assert.AreEqual(true, replaced_text.Text); // this needs to be fixed a lot
        }


    }
}
