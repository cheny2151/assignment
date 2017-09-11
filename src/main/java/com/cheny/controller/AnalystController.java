package com.cheny.controller;

import com.cheny.entity.Analyst;
import com.cheny.service.AnalystService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by cheny on 2017/8/13.
 */
@Controller("analystController")
@RequestMapping("/analyst")
public class AnalystController extends BaseController {

    @Resource(name = "analystServiceImpl")
    private AnalystService analystService;

    @RequestMapping("/test")
    public void test() {
        try {
            Analyst analyst = analystService.find(1L);
            System.out.println(analyst.getAnalystName());
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(Analyst analyst, RedirectAttributes redirectAttributes, Model model) {
        if (analyst == null) {
            return illegalView(model);
        }
        analystService.persist(analyst);
        addSuccessFlushMessage(redirectAttributes, "添加成功");
        return "redirect:list";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(Long id,Model model) {
        Analyst analyst = analystService.find(id);
        model.addAttribute("analyst",analyst);
        return "/analyst_edit";
    }

    @RequestMapping(value = "delete", method = RequestMethod.GET)
    public String delete(Long id, RedirectAttributes redirectAttributes) {
        analystService.remove(id);
        addSuccessFlushMessage(redirectAttributes, "删除成功");
        return "redirect:list";
    }

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String list(Model model) {
        List<Analyst> analysts = analystService.findList();
        model.addAttribute("analysts", analysts);
        return "/analyst_list";
    }

}
