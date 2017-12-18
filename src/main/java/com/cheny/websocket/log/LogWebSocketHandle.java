package com.cheny.websocket.log;

import org.junit.Test;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

@ServerEndpoint("/log")
public class LogWebSocketHandle {

    private Process process;

    private InputStream inputStream;

    @OnOpen
    public void onOpen(Session session) {
        try {
            process = Runtime.getRuntime().exec("tail -f C:\\apache-tomcat-7.0.82\\logs\\catalina.2017-12-18.log");
            System.out.println("websocket in");
            inputStream = process.getInputStream();
            new LogWebSocketThread(inputStream, session).start();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @OnClose
    public void onClose() {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (process != null) {
            process.destroy();
        }
    }

    @OnError
    public void onError(Throwable thr) {
        thr.printStackTrace();
    }


    @Test
    public void test() {
        try {
            Process exec = Runtime.getRuntime().exec("cmd /k C:\\apache-tomcat-7.0.82\\log\\startup.bat");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
            String context;
            while ((context = bufferedReader.readLine()) != null) {
                System.out.println(context);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
