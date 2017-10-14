package com.cheny.controller;

import com.cheny.entity.Assignment;
import com.cheny.entity.Project;
import com.cheny.entity.SerialNumber;
import com.cheny.service.AssignmentService;
import com.cheny.service.ProjectService;
import com.cheny.service.SerialNumberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
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
        List<Assignment> assignments = assignmentService.findAll();
        model.addAttribute("assignments", assignments);
        return "/assignment_list";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String delete(Long[] ids, RedirectAttributes redirectAttributes) {

        if (ids != null) {
            try {
                assignmentService.deleteAssignments(ids);
                addSuccessFlushMessage(redirectAttributes, "删除成功");
            } catch (Exception e) {
                addErrorFlushMessage(redirectAttributes, "删除失败,请重试");
            }
        }
        return "redirect:list";

    }

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public String view(Long id, RedirectAttributes redirectAttributes, Model model) {

        Assignment assignment = assignmentService.find(id);
        if (assignment == null) {
            addErrorFlushMessage(redirectAttributes, "找不到该单号");
            return "redirect:list";
        }
        List<Project> projects = projectService.findAll();
        model.addAttribute("projects", projects);
        model.addAttribute("assignment", assignment);
        return "/assignment_view";

    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(Assignment assignment, RedirectAttributes redirectAttributes) {

        //更新原始实体
        Assignment origin = assignmentService.updateOnlyThisProperties(assignment, "name", "memo", "startDate", "finalDate");

        //移除被删除的流水号
        assignmentService.removeBeDeleted(origin, assignment);

        //更新流水号
        List<SerialNumber> serialNumbers = assignment.getSerialNumbers();
        for (SerialNumber serialNumber : serialNumbers) {
            if (StringUtils.isEmpty(serialNumber.getNumber())) {
                continue;
            }
            List<Project> projects = projectService.findByIds(serialNumber.getProjectIds());
            //id不为null则update，为null则save
            Long id = serialNumber.getId();
            if (id != null) {
                SerialNumber originSerialNumber = serialNumberService.find(id);
                List<Project> originProject = originSerialNumber.getProjects();
                originProject.clear();
                originProject.addAll(projects);
                originSerialNumber.setNumber(serialNumber.getNumber());
                serialNumberService.merge(originSerialNumber);
            } else {
                serialNumber.getProjects().addAll(projects);
                serialNumber.setAssignment(origin);
                serialNumberService.persist(serialNumber);
            }
        }

        addSuccessFlushMessage(redirectAttributes, "修改成功");
        return "redirect:view?id=" + assignment.getId();

    }

}
