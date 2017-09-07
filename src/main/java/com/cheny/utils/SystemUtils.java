package com.cheny.utils;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.junit.Test;
import org.springframework.core.io.ClassPathResource;

import java.io.File;
import java.net.URL;
import java.util.List;

/**
 * 系统设置
 * Created by cheny on 2017/7/31.
 */
public class SystemUtils {

    private static final String systemXML = "/system.xml";

    public SystemUtils() {
    }

    @SuppressWarnings("unchecked")
    @Test
    public void getSystemSet() {
//        ClassPathResource resource = new ClassPathResource(systemXML);
        try {
            URL resource = this.getClass().getClassLoader().getResource("system.xml");
//            File file = new ClassPathResource(systemXML).getFile();
            Document document = new SAXReader().read(resource);
            List<Element> nodes = document.selectNodes("/system/set");
            for (Element element : nodes) {
                System.out.println(element.attributeValue("name"));
                System.out.println(element.attributeValue("value"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
