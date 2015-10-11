package com.capgemini.pmo.controller;
import com.capgemini.pmo.entity.EmployeeRoster;
import org.springframework.roo.addon.web.mvc.controller.annotations.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.annotations.finder.RooWebFinder;

@RequestMapping("/employeerosters")
@Controller
@RooWebScaffold(path = "employeerosters", formBackingObject = EmployeeRoster.class)
@RooWebFinder
public class EmployeeRosterController {
}
