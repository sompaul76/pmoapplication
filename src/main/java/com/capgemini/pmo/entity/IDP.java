package com.capgemini.pmo.entity;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import com.capgemini.pmo.constant.ActiveInactiveFlag;
import javax.persistence.Enumerated;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "T_IDP")
public class IDP {

    /**
     */
    @NotNull
    @Column(name = "C_IDP_NAME")
    @Size(max = 50)
    private String name;

    /**
     */
    @NotNull
    @Column(name = "C_IDP_HEAD")
    @Size(max = 100)
    private String idphead;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "C_ID_BUREF")
    private BuisnessUnit buorg;

    /**
     */
    @Column(name = "C_ACTIVE_FLAG")
    @Enumerated
    private ActiveInactiveFlag ActiveFlag;
}
