package com.example.myfirstapp

import android.content.Intent
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.EditText
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.preference.PreferenceManager
import org.json.*
import java.io.IOException
import java.net.*


class SoftOptions {
    var RemoteHost: String = "173.59.238.239"
    var RemotePort: Int = 23442

    constructor()
    init{}
}

// Global
val Settings = SoftOptions()
var aesmsg = ""
const val EXTRA_MESSAGE = "com.example.myfirstapp.MESSAGE"

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    /** Called when the user taps the send button */
    fun sendMessage(view: View) {
        val prefs = PreferenceManager.getDefaultSharedPreferences(view.context)

        val editText = findViewById<EditText>(R.id.editText)
        val message = editText.text.toString()

        val json = JSONObject()
        json.put("data", message)
        json.put("charSchemaID", prefs.getString("char_schema_id", "3"))
        json.put("key", prefs.getString("key", "3"))

        val textView = findViewById<TextView>(R.id.sentTextView).apply {
            text = message
        }
        val aesTextView = findViewById<TextView>(R.id.aesTextView)

        val udpConnect = Thread(ClientSend(json.toString()))
        udpConnect.start()
        udpConnect.join()

        aesTextView.setText(JSONObject(aesmsg).getString("DATA"))
    }

    fun openConfig(view: View) {
        val intent = Intent(this, SettingsActivity::class.java)
        startActivity(intent)
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

class ClientSend(message: String) : Runnable {
    private val msg = message
    override fun run() {
        var run = true
        try {
            val udpSocket = DatagramSocket()
            val sockAddr = InetSocketAddress(
                InetAddress.getByName(Settings.RemoteHost),
                Settings.RemotePort
            )
            val buf = msg.toByteArray()
            val packet = DatagramPacket(buf, buf.size, sockAddr)
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