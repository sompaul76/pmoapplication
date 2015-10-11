package com.capgemini.pmo.entity;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import com.capgemini.pmo.constant.AccountStatus;
import com.capgemini.pmo.constant.EmpBand;
import com.capgemini.pmo.constant.EmpBillability;
import com.capgemini.pmo.constant.EmpLevel;
import com.capgemini.pmo.constant.EmpLocation;
import com.capgemini.pmo.constant.Gender;
import com.capgemini.pmo.constant.RightShore;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.Column;
import javax.persistence.Enumerated;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Max;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "T_EMPLOYEE_PROJECT")
@RooJpaActiveRecord(finders = { "findEmployeeRostersByAccountstatusEquals" })
public class EmployeeRoster {

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "C_ID_EMPREF")
    private EmployeeMaster emp;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "C_ID_PROJECTREF")
    private Project projectcode;

    /**
     */
    @NotNull
    @Column(name = "C_START_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar taggingstartdate;

    /**
     */
    @NotNull
    @Column(name = "C_END_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar taggingenddate;

    /**
     */
    @NotNull
    @Column(name = "C_BILLABILITY")
    @Enumerated
    private EmpBillability billability;

    /**
     */
    @NotNull
    @Column(name = "C_ACCOUNTSTATUS")
    @Enumerated
    private AccountStatus accountstatus;

    /**
     */
    @Column(name = "C_PMOCOMMENTS")
    @Size(max = 250)
    private String pmocomments;

    /**
     */
    @Column(name = "C_ROLLOFFDATE")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar rolloffdate;

    /**
     */
    @Column(name = "C_ROLLOFFREASON")
    @Size(max = 100)
    private String rolloffreason;

    /**
     */
    @Column(name = "C_SOURCE")
    @Size(max = 50)
    private String source;

    /**
     */
    @Column(name = "C_ACCOUNT_START_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar accntstartdate;

    /**
     */
    @Column(name = "C_AVAILABILITY")
    @Max(100L)
    private Integer availability;
}
