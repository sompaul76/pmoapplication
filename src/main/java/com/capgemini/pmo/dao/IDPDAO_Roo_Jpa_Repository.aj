// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.dao;

import com.capgemini.pmo.dao.IDPDAO;
import com.capgemini.pmo.entity.IDP;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect IDPDAO_Roo_Jpa_Repository {
    
    declare parents: IDPDAO extends JpaRepository<IDP, Long>;
    
    declare parents: IDPDAO extends JpaSpecificationExecutor<IDP>;
    
    declare @type: IDPDAO: @Repository;
    
}