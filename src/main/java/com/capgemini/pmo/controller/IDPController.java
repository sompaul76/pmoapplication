package com.capgemini.pmo.controller;
import com.capgemini.pmo.entity.IDP;
import org.springframework.roo.addon.web.mvc.controller.annotations.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/idps")
@Controller
@RooWebScaffold(path = "idps", formBackingObject = IDP.class)
public class IDPController {
}
