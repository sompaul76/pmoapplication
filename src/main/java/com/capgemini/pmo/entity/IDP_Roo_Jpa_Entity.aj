// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.entity;

import com.capgemini.pmo.entity.IDP;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect IDP_Roo_Jpa_Entity {
    
    declare @type: IDP: @Entity;
    
    declare @type: IDP: @Table(name = "T_IDP");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long IDP.id;
    
    @Version
    @Column(name = "version")
    private Integer IDP.version;
    
    public Long IDP.getId() {
        return this.id;
    }
    
    public void IDP.setId(Long id) {
        this.id = id;
    }
    
    public Integer IDP.getVersion() {
        return this.version;
    }
    
    public void IDP.setVersion(Integer version) {
        this.version = version;
    }
    
}
