package com.example.myfirstapp

import android.content.Intent
import android.graphics.Color
import android.os.Bundle
import android.util.Log
import android.util.TypedValue
import android.view.*
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.RelativeLayout
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.constraintlayout.widget.Group
import androidx.core.view.marginBottom
import androidx.preference.PreferenceManager
import org.json.*
import java.io.IOException
import java.net.*
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.util.*
import java.util.Base64.*
import kotlin.text.Charsets.US_ASCII


// Global
var aesmsg = ""
const val EXTRA_MESSAGE = "com.example.myfirstapp.MESSAGE"

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        val inflater: MenuInflater = menuInflater
        inflater.inflate(R.menu.main_menu, menu)
        return true
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        // Handle item selection
        return when (item.itemId) {
            R.id.menu_item_settings -> {
                startActivity(Intent(this, SettingsActivity::class.java))
                true
            }
            R.id.menu_item_clear -> {
                findViewById<LinearLayout>(R.id.linearLayout).removeAllViews()
                true
            }
            else -> super.onOptionsItemSelected(item)
        }
    }


    /** Called when the user taps the send button */
    fun sendMessage(view: View) {
        val prefs = PreferenceManager.getDefaultSharedPreferences(view.context)

        val editText = findViewById<EditText>(R.id.editText)
        val message = editText.text.toString()

        val json = JSONObject()
        json.put("MessageType", 1) // for encryption
        prefs.getString("char_schema_id", "3")?.let { json.put("SchemaId", it.toInt()) }
        json.put("UserText", getEncoder().encodeToString(message.toByteArray(US_ASCII)))
        json.put("UserKey", getEncoder().encodeToString(
            prefs.getString("key", "3")?.toByteArray(
                US_ASCII)
        ))
        json.put("ServerText", "null")
        json.put("ServerIp", prefs.getString("server_ip", "127.0.0.1"))
        json.put("ServerPort", prefs.getString("server_port", "23442"))

        val layout = findViewById<LinearLayout>(R.id.linearLayout)

        val msgLayout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
        }

        // Create TextView programmatically.
        val newTimeTextView = TextView(this)
        // setting height and width
        newTimeTextView.layoutParams = LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.WRAP_CONTENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        )
        // setting text
        newTimeTextView.setText(LocalDateTime.now().format(DateTimeFormatter.ofPattern("EEE, d MMM hh:mm:ss")))
        newTimeTextView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10F)
        msgLayout.addView(newTimeTextView)
        // Create TextView programmatically.
        val newTextView = TextView(this)
        // setting height and width
        newTextView.layoutParams = LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.WRAP_CONTENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        )
        // setting text
        newTextView.setText(message)
        newTextView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14F)
        newTextView.setTextColor(Color.parseColor("#FFFFFF"))
        newTextView.setBackgroundResource(R.drawable.back)
        msgLayout.addView(newTextView)

        layout?.addView(msgLayout)

        /*val textView = findViewById<TextView>(R.id.sentTextView).apply {
            text = message
        }
        textView.setBackgroundResource(R.drawable.back)
        findViewById<TextView>(R.id.sentTimeTextView).setText(
            LocalDateTime.now().format(
                DateTimeFormatter.ofPattern("EEE, d MMM hh:mm:ss")
            )
        )*/

        val aesTextView = findViewById<TextView>(R.id.aesTextView)

        val udpConnect = Thread(ClientSend(json))
        udpConnect.start()
        udpConnect.join()


        //aesTextView.setText(JSONObject(aesmsg).getString("UserText"))
    }

    fun testButton(view: View) {
        val prefs = PreferenceManager.getDefaultSharedPreferences(view.context)

        val json = JSONObject()
        json.put("server_ip", prefs.getString("server_ip", "3"))
        json.put("server_port", prefs.getString("server_port", "3"))
        json.put("receiver_ip", prefs.getString("receiver_ip", "3"))
        json.put("charSchemaID", prefs.getString("char_schema_id", "3"))
        json.put("key", prefs.getString("key", "3"))
        findViewById<TextView>(R.id.aesTextView).setText(json.toString())
    }

}

class ClientSend(json: JSONObject) : Runnable {
    private val data = json
    private val msg = data.toString()
    override fun run() {
        var run = true
        try {
            val udpSocket = DatagramSocket()
            val sockAddr = InetSocketAddress(
                InetAddress.getByName(data.getString("ServerIp")),
                data.getString("ServerPort").toInt()
            )
            data.remove("ServerPort")
            data.remove("ServerIp")
            val buf = data.toString()
            val buf2 = buf.toByteArray(US_ASCII)
            val packet = DatagramPacket(buf2, buf2.size, sockAddr)
            udpSocket.send(packet)
            while (run) {
                try {
                    val recvmessage = ByteArray(2048)
                    val packet = DatagramPacket(recvmessage, recvmessage.size)
                    Log.i("UDP client: ", "about to wait to receive")
                    udpSocket.soTimeout = 500
                    udpSocket.receive(packet)
                    val recvtext = String(recvmessage, 0, packet.length)
                    Log.d("Received text", recvtext)
                    aesmsg = recvtext
                } catch (e: IOException) {
                    Log.e(" UDP client has IOException", "error: ", e)
                    run = false
                    udpSocket.close()
                } catch (e: SocketTimeoutException) {
                    Log.e("Timeout Exception", "UDP Connection:", e)
                    run = false
                    udpSocket.close()
                }
            }
        } catch (e: SocketException) {
            Log.e("Udp:", "Socket Error:", e)
        } catch (e: IOException) {
            Log.e("Udp Send:", "IO Error:", e)
        }
    }
}