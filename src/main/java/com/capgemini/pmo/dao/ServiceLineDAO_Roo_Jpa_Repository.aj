// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.dao;

import com.capgemini.pmo.dao.ServiceLineDAO;
import com.capgemini.pmo.entity.ServiceLine;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect ServiceLineDAO_Roo_Jpa_Repository {
    
    declare parents: ServiceLineDAO extends JpaRepository<ServiceLine, Long>;
    
    declare parents: ServiceLineDAO extends JpaSpecificationExecutor<ServiceLine>;
    
    declare @type: ServiceLineDAO: @Repository;
    
}