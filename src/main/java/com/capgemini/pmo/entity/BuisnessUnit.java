package com.capgemini.pmo.entity;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;

import com.capgemini.pmo.constant.ActiveInactiveFlag;

import javax.persistence.Column;
import javax.persistence.Enumerated;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "T_BUISNESS_UNIT")
public class BuisnessUnit {

    /**
     */
    @NotNull
    @Column(name = "C_BU_NAME")
    @Size(max = 50)
    private String BUName;

    /**
     */
    @NotNull
    @Column(name = "C_BU_HEAD")
    @Size(max = 100)
    private String BUHead;

    /**
     */
    @Column(name = "C_BU_ACTIVE")
    @Enumerated
    private ActiveInactiveFlag BUActive;
}
