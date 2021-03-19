using MAESFRAMEWORK.CodeProcessors.ReplacementSchema;
using MAESFRAMEWORK.DataTypes.ReplacementSchema;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;
using Newtonsoft.Json;
using uint8_t = System.Byte;

namespace UnitTests.ReplacementSchema
{
    // no clue why that's not working
    [TestFixture]
    [Category("ReplacementSchema")]
    public class ReplacementSchemaTests : TestingUtilities
    {
        [OneTimeSetUp]
        public void Init()
        {
            m_schema = new SchemaManager();
            new_const_schema = GenerateConstantSchema(m_schema);
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
        public void TestExternalSchemaAdd()
        {
            //the original constant schema
            Assert.AreEqual(1, m_schema.schemas_count);

            //add more schemas and test the number
            m_schema.RequestNewSchema();
            m_schema.RequestNewSchema();
            m_schema.RequestNewSchema();

            Assert.AreEqual(4, m_schema.schemas_count);
        }

        [Test, Order(1)]
        public void ReplacePlaintextTest()
        {
            CharReplacedText plaintext = new CharReplacedText(new_const_schema);
            plaintext.Text = text_to_replace;
            ReplacedMessage rep_text = m_schema.CharacterReplacePlaintext(plaintext);

            //string jsonn = JsonConvert.SerializeObject(rep_text);
            //"Lorem ipsum dol
            Assert.AreEqual(28, rep_text.replacedTexts.Count);
            Assert.AreEqual(0xdd, rep_text.replacedTexts[0].Text[0]);
            Assert.AreEqual(0xb3, rep_text.replacedTexts[0].Text[1]);
            Assert.AreEqual(0x8C, rep_text.replacedTexts[1].Text[3]);
            Assert.AreEqual(0x9A, rep_text.replacedTexts[2].Text[4]);
            Assert.AreEqual(0x93, rep_text.replacedTexts[3].Text[5]);
            Assert.AreEqual(0x90, rep_text.replacedTexts[27].Text[6]);
        }

        [Test, Order(2)]
        public void ReplaceCyphertextTest()
        {
            string file_text = GetFileStringContent(broken_json_filepath);
            ReplacedMessage message_from_text = ParseJson<ReplacedMessage>(file_text, false);

            CharReplacedText back_to_normal = m_schema.CharacterReplaceCyphertext(message_from_text);
            //string replace_text_compare = Encoding.ASCII.GetString(ssad.Text);
            //432 115 116
            //432 101 115 116
            CollectionAssert.AreEqual(Encoding.ASCII.GetString(text_to_replace).Trim(), Encoding.ASCII.GetString(back_to_normal.Text).Trim());
        }
    }
}
