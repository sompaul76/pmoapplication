package com.capgemini.pmo.controller;
import com.capgemini.pmo.entity.ServiceLine;
import org.springframework.roo.addon.web.mvc.controller.annotations.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/servicelines")
@Controller
@RooWebScaffold(path = "servicelines", formBackingObject = ServiceLine.class)
public class ServiceLineController {
}
