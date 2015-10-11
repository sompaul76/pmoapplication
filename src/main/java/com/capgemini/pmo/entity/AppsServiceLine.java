package com.capgemini.pmo.entity;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import com.capgemini.pmo.constant.ActiveInactiveFlag;
import javax.persistence.Column;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "T_IDP_SERVICE_LINE")
public class AppsServiceLine {

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "C_ID_IDPREF")
    private IDP idp;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "C_ID_SRVCLINEREF")
    private ServiceLine serviceline;

    /**
     */
    @Column(name = "C_ACTIVE")
    @Enumerated
    private ActiveInactiveFlag Active;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Skills> skills = new HashSet<Skills>();
}
