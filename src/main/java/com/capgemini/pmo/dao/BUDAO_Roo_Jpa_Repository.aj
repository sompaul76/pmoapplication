// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.dao;

import com.capgemini.pmo.dao.BUDAO;
import com.capgemini.pmo.entity.BuisnessUnit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect BUDAO_Roo_Jpa_Repository {
    
    declare parents: BUDAO extends JpaRepository<BuisnessUnit, Long>;
    
    declare parents: BUDAO extends JpaSpecificationExecutor<BuisnessUnit>;
    
    declare @type: BUDAO: @Repository;
    
}