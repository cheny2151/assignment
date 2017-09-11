package com.cheny.controller;

import com.cheny.VO.Message;
import com.cheny.template.FlushMessageDirective;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


/**
 * 基类
 * Created by cheny on 2017/7/25.
 */
@Controller
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
