package com.capgemini.pmo.dao;
import com.capgemini.pmo.entity.AppsServiceLine;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

@RooJpaRepository(domainType = AppsServiceLine.class)
public interface AppsServiceLineDAO {
}
