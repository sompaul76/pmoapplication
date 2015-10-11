package com.capgemini.pmo.controller;
import com.capgemini.pmo.entity.AppsServiceLine;
import org.springframework.roo.addon.web.mvc.controller.annotations.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/appsservicelines")
@Controller
@RooWebScaffold(path = "appsservicelines", formBackingObject = AppsServiceLine.class)
public class AppsServiceLineController {
}
