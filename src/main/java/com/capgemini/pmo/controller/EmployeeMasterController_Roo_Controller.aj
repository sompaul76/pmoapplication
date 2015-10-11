// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.controller;

import com.capgemini.pmo.constant.AccountActiveStatus;
import com.capgemini.pmo.constant.EmpBand;
import com.capgemini.pmo.constant.EmpLevel;
import com.capgemini.pmo.constant.EmpLocation;
import com.capgemini.pmo.constant.EmployeeType;
import com.capgemini.pmo.constant.Gender;
import com.capgemini.pmo.controller.EmployeeMasterController;
import com.capgemini.pmo.dao.AppsServiceLineDAO;
import com.capgemini.pmo.dao.EmployeeMasterDAO;
import com.capgemini.pmo.dao.IDPDAO;
import com.capgemini.pmo.dao.ServiceLineDAO;
import com.capgemini.pmo.dao.SkillsDAO;
import com.capgemini.pmo.entity.AppsServiceLine;
import com.capgemini.pmo.entity.EmployeeMaster;
import com.capgemini.pmo.entity.ServiceLine;

import java.io.ByteArrayInputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect EmployeeMasterController_Roo_Controller {
    
    @Autowired
    EmployeeMasterDAO EmployeeMasterController.employeeMasterDAO;
    
    @Autowired
    IDPDAO EmployeeMasterController.iDPDAO;
    
    @Autowired
    ServiceLineDAO EmployeeMasterController.serviceLineDAO;
    
    @Autowired
    AppsServiceLineDAO EmployeeMasterController.appsserviceLineDAO;
    
    @Autowired
    SkillsDAO EmployeeMasterController.skillsDAO;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String EmployeeMasterController.create(@Valid EmployeeMaster employeeMaster, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, employeeMaster);
            return "employeemasters/create";
        }
        uiModel.asMap().clear();
        employeeMasterDAO.save(employeeMaster);
        return "redirect:/employeemasters/" + encodeUrlPathSegment(employeeMaster.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String EmployeeMasterController.createForm(Model uiModel) {
        populateEditForm(uiModel, new EmployeeMaster());
        return "employeemasters/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String EmployeeMasterController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("employeemaster", employeeMasterDAO.findOne(id));
        uiModel.addAttribute("itemId", id);
        return "employeemasters/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String EmployeeMasterController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("employeemasters", employeeMasterDAO.findAll(new org.springframework.data.domain.PageRequest(firstResult / sizeNo, sizeNo)).getContent());
            float nrOfPages = (float) employeeMasterDAO.count() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("employeemasters", employeeMasterDAO.findAll());
        }
        addDateTimeFormatPatterns(uiModel);
        return "employeemasters/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String EmployeeMasterController.update(@Valid EmployeeMaster employeeMaster, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, employeeMaster);
            return "employeemasters/update";
        }
        uiModel.asMap().clear();
        employeeMasterDAO.save(employeeMaster);
        return "redirect:/employeemasters/" + encodeUrlPathSegment(employeeMaster.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String EmployeeMasterController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, employeeMasterDAO.findOne(id));
        return "employeemasters/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String EmployeeMasterController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        EmployeeMaster employeeMaster = employeeMasterDAO.findOne(id);
        employeeMasterDAO.delete(employeeMaster);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/employeemasters";
    }

    @RequestMapping(value = "/{id}/image", method = RequestMethod.GET)
    public String EmployeeMasterController.showImage(@PathVariable("id") Long id, HttpServletResponse response, Model model) {
    	EmployeeMaster logItem = employeeMasterDAO.findOne(id);
        if (logItem != null) {
            byte[] image = logItem.getImage();
            if (image != null) {
                try {
                    response.setContentType(logItem.getContentType());
                    OutputStream out = response.getOutputStream();
                    IOUtils.copy(new ByteArrayInputStream(image), out);
                    out.flush();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    @RequestMapping(value = "/servicelinebyidp", method = RequestMethod.POST, produces = "text/html")
    public  @ResponseBody String EmployeeMasterController.servicelinebyidp(@RequestParam(value = "ididp", required = true) Long idpidp) {
    	ArrayList<ServiceLine>servicelines=new ArrayList<ServiceLine>();
    	List<AppsServiceLine> appsline=appsserviceLineDAO.findAll();
    	for(AppsServiceLine appssrvcline:appsline){
    		if(appssrvcline.getIdp().getId().toString().equals(idpidp.toString())) {
    			servicelines.add(appssrvcline.getServiceline());
        	}
    	}
    	String out="";
    	out+="<div id=\"_c_com_capgemini_pmo_entity_EmployeeMaster_srvcline_id\">";
    	out+="<label for=\"_srvcline_id\">Srvcline";
    	out+="			:</label>";
    	out+="<select id=\"_srvcline_id\" name=\"srvcline\">";
    	for(ServiceLine serviceline:servicelines){
    		out+="<option value=\""+serviceline.getId()+"\">"+serviceline.getName()+"</option>";
    	}
    	out+="</select><br/>";
    	out+="</div><br/>";
    	out+="";
     	return out;
    	
    }
    void EmployeeMasterController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("employeeMaster_doj_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("employeeMaster_dob_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
   void EmployeeMasterController.populateEditForm(Model uiModel, EmployeeMaster employeeMaster) {
           uiModel.addAttribute("employeeMaster", employeeMaster);
           addDateTimeFormatPatterns(uiModel);
           uiModel.addAttribute("accountactivestatuses", Arrays.asList(AccountActiveStatus.values()));
           uiModel.addAttribute("empbands", Arrays.asList(EmpBand.values()));
           uiModel.addAttribute("emplevels", Arrays.asList(EmpLevel.values()));
           uiModel.addAttribute("emplocations", Arrays.asList(EmpLocation.values()));
           uiModel.addAttribute("employeetypes", Arrays.asList(EmployeeType.values()));
           uiModel.addAttribute("genders", Arrays.asList(Gender.values()));
           uiModel.addAttribute("idps", iDPDAO.findAll());
           uiModel.addAttribute("servicelines", serviceLineDAO.findAll());
           uiModel.addAttribute("skillses", skillsDAO.findAll());
    }
    
    String EmployeeMasterController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
