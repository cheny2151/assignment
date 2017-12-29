package com.cheny.websocket.log;

import org.junit.Test;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import java.io.*;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@ServerEndpoint("/log")
public class LogWebSocketHandle {

    /**
     * 缓冲线程池
     */
    private final static ExecutorService cachedThreadPool = Executors.newCachedThreadPool();

    /**
     * 进程
     */
    private Process process;

    /**
     * 输入流
     */
    private InputStream inputStream;


    @OnOpen
    public void onOpen(Session session) {
        try {
//            process = Runtime.getRuntime().exec("tail -f C:\\apache-tomcat-7.0.82\\logs\\catalina.2017-12-18.log");
//            System.out.println("websocket in");
//            inputStream = process.getInputStream();
            inputStream = new FileInputStream(new File("C:\\apache-tomcat-7.0.79\\RUNNING.txt"));
            cachedThreadPool.execute(new LogWebSocketThread(inputStream, session));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @OnClose
    public void onClose() {
        System.out.println("onClose...");
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
