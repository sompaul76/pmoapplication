package com.capgemini.pmo.controller;
import com.capgemini.pmo.entity.BuisnessUnit;
import org.springframework.roo.addon.web.mvc.controller.annotations.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/buisnessunits")
@Controller
@RooWebScaffold(path = "buisnessunits", formBackingObject = BuisnessUnit.class)
public class BUController {
}
