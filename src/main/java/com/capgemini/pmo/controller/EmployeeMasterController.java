package com.capgemini.pmo.controller;
import com.capgemini.pmo.entity.EmployeeMaster;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.roo.addon.web.mvc.controller.annotations.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;

@RequestMapping("/employeemasters")
@Controller
@RooWebScaffold(path = "employeemasters", formBackingObject = EmployeeMaster.class)
public class EmployeeMasterController {
	
	@InitBinder
	protected void initBinder(HttpServletRequest request,
	        ServletRequestDataBinder binder) throws ServletException {
	    binder.registerCustomEditor(byte[].class,
	            new ByteArrayMultipartFileEditor());
	}
}
