// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.controller;

import com.capgemini.pmo.constant.AccountStatus;
import com.capgemini.pmo.controller.EmployeeRosterController;
import com.capgemini.pmo.entity.EmployeeRoster;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect EmployeeRosterController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByAccountstatusEquals", "form" }, method = RequestMethod.GET)
    public String EmployeeRosterController.findEmployeeRostersByAccountstatusEqualsForm(Model uiModel) {
        uiModel.addAttribute("accountstatuses", java.util.Arrays.asList(AccountStatus.class.getEnumConstants()));
        return "employeerosters/findEmployeeRostersByAccountstatusEquals";
    }
    
    @RequestMapping(params = "find=ByAccountstatusEquals", method = RequestMethod.GET)
    public String EmployeeRosterController.findEmployeeRostersByAccountstatusEquals(@RequestParam("accountstatus") AccountStatus accountstatus, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("employeerosters", EmployeeRoster.findEmployeeRostersByAccountstatusEquals(accountstatus, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) EmployeeRoster.countFindEmployeeRostersByAccountstatusEquals(accountstatus) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("employeerosters", EmployeeRoster.findEmployeeRostersByAccountstatusEquals(accountstatus, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "employeerosters/list";
    }
    
}
