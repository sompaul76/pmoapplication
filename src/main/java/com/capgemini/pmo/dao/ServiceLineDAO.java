package com.capgemini.pmo.dao;
import com.capgemini.pmo.entity.ServiceLine;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

@RooJpaRepository(domainType = ServiceLine.class)
public interface ServiceLineDAO {
}
