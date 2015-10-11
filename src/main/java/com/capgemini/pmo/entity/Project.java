package com.capgemini.pmo.entity;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.validation.constraints.Digits;
import com.capgemini.pmo.constant.Currency;
import javax.persistence.Enumerated;
import java.math.BigDecimal;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "T_PROJECT")
public class Project {

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "C_ID_IDPREF")
    private IDP idpname;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "C_ID_ACCOUNTREF")
    private Account account;

    /**
     */
    @NotNull
    @Column(name = "C_CODE")
    @Size(max = 50)
    private String projectCode;

    /**
     */
    @NotNull
    @Column(name = "C_NAME")
    @Size(max = 100)
    private String projectName;

    /**
     */
    @Column(name = "C_DESC")
    @Size(max = 100)
    private String description;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    @Column(name = "C_START_DATE")
    private Calendar startdate;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    @Column(name = "C_END_DATE")
    private Calendar enddate;

    /**
     */
    @Column(name = "C_BUDGETCM")
    @Digits(integer = 3, fraction = 2)
    private BigDecimal budcm;

    /**
     */
    @Column(name = "C_BUDGETPYRD")
    @Digits(integer = 2, fraction = 0)
    private BigDecimal budpyrd;

    /**
     */
    @Column(name = "C_BUDGETHEADCOUNT")
    @Digits(integer = 3, fraction = 0)
    private BigDecimal budheadcount;

    /**
     */
    @Column(name = "C_REVENUE")
    @Digits(integer = 10, fraction = 2)
    private BigDecimal revenue;

    /**
     */
    @Column(name = "C_ENGMT_MANAGER")
    @Size(max = 100)
    private String engagmanager;

    /**
     */
    @Column(name = "C_PROJ_MANAGER")
    @Size(max = 100)
    private String projmanager;

    /**
     */
    @Column(name = "C_CURRENCY")
    @Enumerated
    private Currency currency;


}
