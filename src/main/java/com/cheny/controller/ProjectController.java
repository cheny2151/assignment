package com.cheny.controller;

import com.cheny.entity.Project;
import com.cheny.service.ProjectService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by cheny on 2017/9/11.
 */
@Controller
@RequestMapping("project")
public class ProjectController extends BaseController {

    @Resource(name = "projectServiceImpl")
    private ProjectService projectService;

    @RequestMapping(value = "/save", method = RequestMethod.GET)
    public String add(Project project, RedirectAttributes redirectAttributes) {

        if (StringUtils.isEmpty(project.getName())) {
            addErrorFlushMessage(redirectAttributes, "项目名不能为空");
            return "redirect:/page/project_add";
        }
        projectService.persist(project);
        addSuccessFlushMessage(redirectAttributes, "添加成功");
        return "redirect:/page/project_add";

    }

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String list(Model model) {
        List<Project> projects = projectService.findAll();
        model.addAttribute("projects", projects);
        return "/project_list";
    }

    @RequestMapping(value = "edit", method = RequestMethod.GET)
    public String edit(Long id, Model model) {
        Project project = projectService.find(id);
        model.addAttribute("project", project);
        return "/project_edit";
    }

    @RequestMapping(value = "update", method = RequestMethod.GET)
    public String update(Project project, RedirectAttributes redirectAttributes) {
        projectService.updateOnlyThisProperties(project, "standard", "price", "name");
        addSuccessFlushMessage(redirectAttributes, "修改成功");
        return "redirect:edit?id=" + project.getId();
    }

    @RequestMapping(value = "delete", method = RequestMethod.GET)
    public String delete(Long[] ids, RedirectAttributes redirectAttributes) {
        if (ids != null) {
            projectService.remove(ids);
            addSuccessFlushMessage(redirectAttributes, "删除成功");
        }
        return "redirect:list";
    }

}
