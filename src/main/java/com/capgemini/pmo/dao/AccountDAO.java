package com.capgemini.pmo.dao;
import com.capgemini.pmo.entity.Account;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

@RooJpaRepository(domainType = Account.class)
public interface AccountDAO {
}
