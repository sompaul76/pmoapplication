// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.entity;

import com.capgemini.pmo.constant.AccountActiveStatus;
import com.capgemini.pmo.constant.EmpBand;
import com.capgemini.pmo.constant.EmpLevel;
import com.capgemini.pmo.constant.EmpLocation;
import com.capgemini.pmo.constant.EmployeeType;
import com.capgemini.pmo.constant.Gender;
import com.capgemini.pmo.entity.EmployeeMaster;
import com.capgemini.pmo.entity.IDP;
import com.capgemini.pmo.entity.ServiceLine;
import com.capgemini.pmo.entity.Skills;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Set;

privileged aspect EmployeeMaster_Roo_JavaBean {
    
    public IDP EmployeeMaster.getIdp() {
        return this.idp;
    }
    
    public void EmployeeMaster.setIdp(IDP idp) {
        this.idp = idp;
    }
    
    public BigDecimal EmployeeMaster.getEmpnum() {
        return this.empnum;
    }
    
    public void EmployeeMaster.setEmpnum(BigDecimal empnum) {
        this.empnum = empnum;
    }
    
    public String EmployeeMaster.getName() {
        return this.name;
    }
    
    public void EmployeeMaster.setName(String name) {
        this.name = name;
    }
    
    public Gender EmployeeMaster.getGender() {
        return this.gender;
    }
    
    public void EmployeeMaster.setGender(Gender gender) {
        this.gender = gender;
    }
    
    public EmployeeType EmployeeMaster.getEmptype() {
        return this.emptype;
    }
    
    public void EmployeeMaster.setEmptype(EmployeeType emptype) {
        this.emptype = emptype;
    }
    
    public AccountActiveStatus EmployeeMaster.getEmpstatus() {
        return this.empstatus;
    }
    
    public void EmployeeMaster.setEmpstatus(AccountActiveStatus empstatus) {
        this.empstatus = empstatus;
    }
    
    public EmpBand EmployeeMaster.getBand() {
        return this.band;
    }
    
    public void EmployeeMaster.setBand(EmpBand band) {
        this.band = band;
    }
    
    public EmpLevel EmployeeMaster.getEmplevel() {
        return this.emplevel;
    }
    
    public void EmployeeMaster.setEmplevel(EmpLevel emplevel) {
        this.emplevel = emplevel;
    }
    
    public EmpLocation EmployeeMaster.getLocation() {
        return this.location;
    }
    
    public void EmployeeMaster.setLocation(EmpLocation location) {
        this.location = location;
    }
    
    public Calendar EmployeeMaster.getDoj() {
        return this.doj;
    }
    
    public void EmployeeMaster.setDoj(Calendar doj) {
        this.doj = doj;
    }
    
    public Calendar EmployeeMaster.getDob() {
        return this.dob;
    }
    
    public void EmployeeMaster.setDob(Calendar dob) {
        this.dob = dob;
    }
    
    public String EmployeeMaster.getEmail() {
        return this.email;
    }
    
    public void EmployeeMaster.setEmail(String email) {
        this.email = email;
    }
    
    public String EmployeeMaster.getMobile() {
        return this.mobile;
    }
    
    public void EmployeeMaster.setMobile(String mobile) {
        this.mobile = mobile;
    }
    
    public String EmployeeMaster.getCgid() {
        return this.cgid;
    }
    
    public void EmployeeMaster.setCgid(String cgid) {
        this.cgid = cgid;
    }
    
    public BigDecimal EmployeeMaster.getIndustryexp() {
        return this.industryexp;
    }
    
    public void EmployeeMaster.setIndustryexp(BigDecimal industryexp) {
        this.industryexp = industryexp;
    }
    
    public ServiceLine EmployeeMaster.getSrvcline() {
        return this.srvcline;
    }
    
    public void EmployeeMaster.setSrvcline(ServiceLine srvcline) {
        this.srvcline = srvcline;
    }
    
    public byte[] EmployeeMaster.getImage() {
        return this.image;
    }
    
    public void EmployeeMaster.setImage(byte[] image) {
        this.image = image;
    }
    
    public String EmployeeMaster.getContentType() {
        return this.contentType;
    }
    
    public void EmployeeMaster.setContentType(String contentType) {
        this.contentType = contentType;
    }
    
    public Skills EmployeeMaster.getPrimaryskill() {
        return this.primaryskill;
    }
    
    public void EmployeeMaster.setPrimaryskill(Skills primaryskill) {
        this.primaryskill = primaryskill;
    }
    
    public Set<Skills> EmployeeMaster.getSecskill() {
        return this.secskill;
    }
    
    public void EmployeeMaster.setSecskill(Set<Skills> secskill) {
        this.secskill = secskill;
    }
    
}
