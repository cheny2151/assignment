package com.cheny.websocket.log;

import javax.websocket.Session;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class LogWebSocketThread extends Thread {

    private BufferedReader reader;

    private Session session;

    public LogWebSocketThread(InputStream in, Session session) {
        this.reader = new BufferedReader(new InputStreamReader(in));
        this.session = session;
    }

    @Override
    public void run() {
        String logContext;
        try {
            while ((logContext = reader.readLine()) != null) {
                try {
                    Thread.sleep(1000);
                    System.out.println("===============");
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                if (session.isOpen()) {
                    session.getBasicRemote().sendText(logContext + "<br/>");
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
