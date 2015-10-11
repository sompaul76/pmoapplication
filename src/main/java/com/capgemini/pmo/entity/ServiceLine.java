package com.capgemini.pmo.entity;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "T_SERVICE_LINE")
public class ServiceLine {

    /**
     */
    @NotNull
    @Column(name = "C_SRVCLINE_NAME")
    @Size(max = 50)
    private String name;
}
