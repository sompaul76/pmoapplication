package com.capgemini.pmo.entity;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "T_ACCOUNT")
public class Account {

    /**
     */
    @NotNull
    @Column(name = "C_NAME")
    @Size(max = 50)
    private String name;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "C_ID_IDPREF")
    private IDP idp;

    /**
     */
    @Size(max = 100)
    @Column(name = "C_EXEC_NAME")
    private String accountexec;

    /**
     */
    @Size(max = 100)
    @Column(name = "C_PMO_NAME")
    private String pmocontact;

    /**
     */
    @Column(name = "C_HEADCOUNT")
    private Integer headcount;
}
