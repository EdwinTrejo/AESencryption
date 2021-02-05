package com.example.myfirstapp

import android.R.attr.port
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.EditText
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
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

const val EXTRA_MESSAGE = "com.example.myfirstapp.MESSAGE"

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    /** Called when the user taps the send button */
    fun sendMessage(view: View) {
        val editText = findViewById<EditText>(R.id.editText)
        val message = editText.text.toString()
        val textView = findViewById<TextView>(R.id.sentTextView).apply {
            text = message
        }

        val udpConnect = Thread(ClientSend(message)).start()

    }

}

class ClientSend(message: String) : Runnable {
    private val msg = message
    override fun run() {
        try {
            val udpSocket = DatagramSocket()
            val sockAddr = InetSocketAddress(InetAddress.getByName(Settings.RemoteHost), Settings.RemotePort)
            val buf = msg.toByteArray()
            val packet = DatagramPacket(buf, buf.size, sockAddr)
            udpSocket.send(packet)
        } catch (e: SocketException) {
            Log.e("Udp:", "Socket Error:", e)
        } catch (e: IOException) {
            Log.e("Udp Send:", "IO Error:", e)
        }
    }
}