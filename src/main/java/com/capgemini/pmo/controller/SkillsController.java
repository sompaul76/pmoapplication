package com.capgemini.pmo.controller;
import com.capgemini.pmo.entity.Skills;
import org.springframework.roo.addon.web.mvc.controller.annotations.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/skillses")
@Controller
@RooWebScaffold(path = "skillses", formBackingObject = Skills.class)
public class SkillsController {
}
