package com.cheny.controller;

import com.cheny.entity.Assignment;
import com.cheny.entity.Project;
import com.cheny.entity.SerialNumber;
import com.cheny.service.AssignmentService;
import com.cheny.service.ProjectService;
import com.cheny.service.SerialNumberService;
import com.cheny.system.FilterPolymorphism.Filter;
import com.cheny.system.FilterPolymorphism.FilterFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by cheny on 2017/9/19.
 */
@Controller("AssignmentController")
@RequestMapping("/assignment")
public class AssignmentController extends BaseController {

    @Resource(name = "projectServiceImpl")
    private ProjectService projectService;
    @Resource(name = "assignmentServiceImpl")
    private AssignmentService assignmentService;
    @Resource(name = "serialNumberServiceImpl")
    private SerialNumberService serialNumberService;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(Model model) {

        List<Project> projects = projectService.findAll();
        model.addAttribute("projects", projects);
        return "/assignment_add";

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(Assignment assignment, RedirectAttributes redirectAttributes) {

        try {
            Assert.notNull(assignment, "Must Not Null");
            Assert.hasText(assignment.getName(), "Must Not Whitespace");
            assignmentService.persist(assignment);
            List<SerialNumber> serialNumbers = assignment.getSerialNumbers();
            for (SerialNumber serialNumber : serialNumbers) {
                if (StringUtils.isEmpty(serialNumber.getNumber())) {
                    continue;
                }
                List<Long> projectIds = serialNumber.getProjectIds();
                serialNumber.getProjects().addAll(projectService.findByIds(projectIds));
                serialNumber.setAssignment(assignment);
                serialNumberService.persist(serialNumber);
            }
            addSuccessFlushMessage(redirectAttributes, "添加成功");
        } catch (Exception e) {
            addErrorFlushMessage(redirectAttributes, "添加失败");
        }

        return "redirect:add";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String findList(Model model) {
        Filter<Project> filter = FilterFactory.create(FilterFactory.Operator.like, "name", "维", Project.class);
        Filter<Project> filter1 = FilterFactory.create(FilterFactory.Operator.eq, "price", 500D, Project.class);
        ArrayList<Filter<Project>> filters = new ArrayList<>();
        filters.add(filter);
        filters.add(filter1);
        List<Project> list = projectService.findListPolymorphism(filters);
        for (Project project : list) {
            System.out.println(project.getName());
        }
        return null;
    }
}
