package com.capgemini.pmo.entity;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import java.math.BigDecimal;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import com.capgemini.pmo.constant.Gender;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import com.capgemini.pmo.constant.EmpBand;
import com.capgemini.pmo.constant.EmpLevel;
import com.capgemini.pmo.constant.EmpLocation;
import com.capgemini.pmo.constant.EmployeeType;
import com.capgemini.pmo.constant.AccountActiveStatus;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "T_EMPLOYEE")
public class EmployeeMaster {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "C_ID_IDPREF")
    private IDP idp;

    /**
     */
    @NotNull
    @Column(name = "C_CODE")
    @Digits(integer = 10, fraction = 0)
    private BigDecimal empnum;

    /**
     */
    @NotNull
    @Column(name = "C_NAME")
    @Size(max = 100)
    private String name;

    /**
     */
    @NotNull
    @Column(name = "C_GENDER")
    @Enumerated
    private Gender gender;

    /**
     */
    @NotNull
    @Column(name = "C_EMPTYPE")
    @Enumerated
    private EmployeeType emptype;

    /**
     */
    @NotNull
    @Column(name = "C_EMPSTATUS")
    @Enumerated
    private AccountActiveStatus empstatus;

    /**
     */
    @NotNull
    @Column(name = "C_BAND")
    @Enumerated
    private EmpBand band;

    /**
     */
    @NotNull
    @Column(name = "C_LEVEL")
    @Enumerated
    private EmpLevel emplevel;

    /**
     */
    @NotNull
    @Column(name = "C_LOCATION")
    @Enumerated
    private EmpLocation location;

    /**
     */
    @Column(name = "C_DOJ")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar doj;

    /**
     */
    @Column(name = "C_DOB")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar dob;

    /**
     */
    @Column(name = "C_EMAIL")
    @Size(max = 100)
    private String email;

    /**
     */
    @Column(name = "C_MOBILE")
    @Size(max = 12)
    private String mobile;

    /**
     */
    @Column(name = "C_CGID")
    @Size(max = 10)
    private String cgid;

    /**
     */
    @Column(name = "C_IND_EXP")
    @Digits(integer = 2, fraction = 0)
    private BigDecimal industryexp;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "C_ID_SRVCLINEREF")
    private ServiceLine srvcline;

    @Lob
    @Basic(fetch = FetchType.LAZY)
    private byte[] image;

    private String contentType;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "C_ID_SKILLREF")
    private Skills primaryskill;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Skills> secskill = new HashSet<Skills>();
}
