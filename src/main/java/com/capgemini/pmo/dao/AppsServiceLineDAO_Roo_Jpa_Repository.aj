// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.dao;

import com.capgemini.pmo.dao.AppsServiceLineDAO;
import com.capgemini.pmo.entity.AppsServiceLine;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect AppsServiceLineDAO_Roo_Jpa_Repository {
    
    declare parents: AppsServiceLineDAO extends JpaRepository<AppsServiceLine, Long>;
    
    declare parents: AppsServiceLineDAO extends JpaSpecificationExecutor<AppsServiceLine>;
    
    declare @type: AppsServiceLineDAO: @Repository;
    
}
