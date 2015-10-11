package com.capgemini.pmo.dao;
import com.capgemini.pmo.entity.Project;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

@RooJpaRepository(domainType = Project.class)
public interface ProjectDAO {
}
