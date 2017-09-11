package com.cheny.controller;

import com.cheny.service.ProjectService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

/**
 * Created by cheny on 2017/9/11.
 */
@Controller
public class ProjectController {

    @Resource(name = "projectServiceImpl")
    public ProjectService projectService;


}
