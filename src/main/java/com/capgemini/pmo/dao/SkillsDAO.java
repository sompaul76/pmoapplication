package com.capgemini.pmo.dao;
import com.capgemini.pmo.entity.Skills;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

@RooJpaRepository(domainType = Skills.class)
public interface SkillsDAO {
}
