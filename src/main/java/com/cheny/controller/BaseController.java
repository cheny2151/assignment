package com.cheny.controller;

import com.cheny.VO.Message;
import com.cheny.system.DateEditor;
import com.cheny.system.StringEditor;
import com.cheny.template.FlushMessageDirective;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Date;


/**
 * 基类
 * Created by cheny on 2017/7/25.
 */
public class BaseController {

    protected Logger logger = Logger.getLogger(this.getClass());

    protected void addSuccessFlushMessage(RedirectAttributes redirectAttributes, String content) {
        if (StringUtils.isNotEmpty(content)) {
            addFlushMessage(redirectAttributes, new Message(Message.SUCCESS_CODE, content));
        }
    }

    protected void addErrorFlushMessage(RedirectAttributes redirectAttributes, String content) {
        if (StringUtils.isNotEmpty(content)) {
            addFlushMessage(redirectAttributes, new Message(Message.ERROR_CODE, content));
        }
    }

    private void addFlushMessage(RedirectAttributes redirectAttributes, Message message) {
        if (redirectAttributes != null) {
            redirectAttributes.addFlashAttribute(FlushMessageDirective.FLUSH_MESSAGE_ATTRIBUTE_NAME, message);
        }
    }

    /**
     * 数据绑定
     */
    @InitBinder
    protected void dateBinder(WebDataBinder binder) {
        binder.registerCustomEditor(Date.class, new DateEditor());
        binder.registerCustomEditor(String.class, new StringEditor());
    }

    /**
     * 非法操作视图
     */
    protected String illegalView(Model model) {
        if (model != null) {
            model.addAttribute(FlushMessageDirective.FLUSH_MESSAGE_ATTRIBUTE_NAME, "非法操作");
        }
        return "/404";
    }

    /*@ExceptionHandler
    public String errorView(Exception ex) {
        logger.error(ex.getMessage());
        return "/404";
    }*/

}
