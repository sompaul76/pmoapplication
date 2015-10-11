package com.capgemini.pmo.dao;
import com.capgemini.pmo.entity.EmployeeMaster;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

@RooJpaRepository(domainType = EmployeeMaster.class)
public interface EmployeeMasterDAO {
}
