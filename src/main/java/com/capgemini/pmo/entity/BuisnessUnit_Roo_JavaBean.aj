// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.entity;

import com.capgemini.pmo.constant.ActiveInactiveFlag;
import com.capgemini.pmo.entity.BuisnessUnit;

privileged aspect BuisnessUnit_Roo_JavaBean {
    
    public String BuisnessUnit.getBUName() {
        return this.BUName;
    }
    
    public void BuisnessUnit.setBUName(String BUName) {
        this.BUName = BUName;
    }
    
    public String BuisnessUnit.getBUHead() {
        return this.BUHead;
    }
    
    public void BuisnessUnit.setBUHead(String BUHead) {
        this.BUHead = BUHead;
    }
    
    public ActiveInactiveFlag BuisnessUnit.getBUActive() {
        return this.BUActive;
    }
    
    public void BuisnessUnit.setBUActive(ActiveInactiveFlag BUActive) {
        this.BUActive = BUActive;
    }
    
}
