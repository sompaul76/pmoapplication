package com.capgemini.pmo.dao;
import com.capgemini.pmo.entity.EmployeeRoster;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

@RooJpaRepository(domainType = EmployeeRoster.class)
public interface EmployeeRosterDAO {
}
