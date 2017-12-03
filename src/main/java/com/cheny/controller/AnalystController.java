package com.cheny.controller;

import com.cheny.entity.Analyst;
import com.cheny.entity.Project;
import com.cheny.service.AnalystService;
import com.cheny.service.ProjectService;
import com.cheny.system.FilterPolymorphism.FilterFactory;
import org.apache.commons.lang.StringUtils;
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
    @Resource(name = "projectServiceImpl")
    private ProjectService projectService;

    @RequestMapping("/test")
    public void test() {
        List<Analyst> listPolymorphism = analystService.findListPolymorphism(FilterFactory.createFilterList(FilterFactory.like("name", "厚", Analyst.class), FilterFactory.like("name", "烧", Analyst.class)));
        System.out.println(listPolymorphism.get(0).getName());
    }

    @RequestMapping("/add")
    public String add(Model model) {
        List<Project> projects = projectService.findAll();
        model.addAttribute("projects", projects);
        return "/analyst_add";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(Analyst analyst, Long[] projectIds, RedirectAttributes redirectAttributes, Model model) {

        if (StringUtils.isEmpty(analyst.getName())) {
            return illegalView(model);
        }
        List<Project> projects = projectService.findByIds(projectIds);
        if (projects != null) {
            analyst.getProjects().addAll(projects);
        }
        analystService.persist(analyst);

        addSuccessFlushMessage(redirectAttributes, "添加成功");
        return "redirect:add";

    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(Long id, Model model) {
        Analyst analyst = analystService.find(id);
        List<Project> projects = projectService.findAll();
        model.addAttribute("projects", projects);
        model.addAttribute("analyst", analyst);
        return "/analyst_edit";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(Analyst analyst, Long[] projectIds, RedirectAttributes redirectAttributes) {
        List<Project> projects = projectService.findByIds(projectIds);
        List<Project> analystProjects = analyst.getProjects();
        analystProjects.clear();
        if (projects != null) {
            analystProjects.addAll(projects);
        }
        analystService.merge(analyst);
        addSuccessFlushMessage(redirectAttributes, "修改成功");
        return "redirect:edit?id=" + analyst.getId();
    }

    @RequestMapping(value = "delete", method = RequestMethod.GET)
    public String delete(Long[] ids, RedirectAttributes redirectAttributes) {
        if (ids != null) {
            analystService.remove(ids);
            addSuccessFlushMessage(redirectAttributes, "删除成功");
        }
        return "redirect:list";
    }

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String list(Model model) {
        List<Analyst> analysts = analystService.findAll();
        model.addAttribute("analysts", analysts);
        return "/analyst_list";
    }

}
