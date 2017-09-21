package com.cheny.controller;

import com.cheny.entity.Assignment;
import com.cheny.entity.Project;
import com.cheny.entity.SerialNumber;
import com.cheny.service.ProjectService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by cheny on 2017/9/19.
 */
@Controller("AssignmentController")
@RequestMapping("/assignment")
public class AssignmentController extends BaseController {

    @Resource(name = "projectServiceImpl")
    private ProjectService projectService;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(Model model) {

        List<Project> projects = projectService.findAll();
        model.addAttribute("projects", projects);
        return "/assignment_add";

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(Assignment assignment, RedirectAttributes redirectAttributes) {
        List<SerialNumber> serialNumbers = assignment.getSerialNumbers();
        for (SerialNumber serialNumber : serialNumbers) {
            System.out.print(serialNumber.getNumber() + ":");
            List<Long> projectIds = serialNumber.getProjectIds();
            for (Long id : projectIds) {
                System.out.print(id);
            }
            System.out.println();
        }
        return "redirect:add";
    }
}
