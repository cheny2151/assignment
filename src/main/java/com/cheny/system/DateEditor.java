package com.cheny.system;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by cheny on 2017/9/21.
 */
public class DateEditor extends PropertyEditorSupport {

    private static final String DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";

    private static final SimpleDateFormat SIMPLE_DATE_FORMAT = new SimpleDateFormat(DATE_FORMAT);

    @Override
    public String getAsText() {
        Date value = (Date) getValue();
        return SIMPLE_DATE_FORMAT.format(value);
    }

    @Override
    public void setAsText(String text) throws IllegalArgumentException {
        try {
            String value = text.trim();
            if ("".equals(value)) {
                setValue(null);
            } else {
                Date date = SIMPLE_DATE_FORMAT.parse(text);
                setValue(date);
            }
        } catch (ParseException e) {
            setValue(null);
            e.printStackTrace();
        }
    }
}
