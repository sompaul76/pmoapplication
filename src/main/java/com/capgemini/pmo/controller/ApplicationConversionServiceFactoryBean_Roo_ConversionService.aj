	// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
	// You may push code into the target .java compilation unit if you wish to edit any member(s).

	package com.capgemini.pmo.controller;

	import com.capgemini.pmo.controller.ApplicationConversionServiceFactoryBean;
	import com.capgemini.pmo.dao.AccountDAO;
	import com.capgemini.pmo.dao.AppsServiceLineDAO;
	import com.capgemini.pmo.dao.BUDAO;
	import com.capgemini.pmo.dao.EmployeeMasterDAO;
	import com.capgemini.pmo.dao.EmployeeRosterDAO;
	import com.capgemini.pmo.dao.IDPDAO;
	import com.capgemini.pmo.dao.ProjectDAO;
	import com.capgemini.pmo.dao.ServiceLineDAO;
	import com.capgemini.pmo.dao.SkillsDAO;
	import com.capgemini.pmo.entity.Account;
	import com.capgemini.pmo.entity.AppsServiceLine;
	import com.capgemini.pmo.entity.BuisnessUnit;
	import com.capgemini.pmo.entity.EmployeeMaster;
	import com.capgemini.pmo.entity.EmployeeRoster;
	import com.capgemini.pmo.entity.IDP;
	import com.capgemini.pmo.entity.Project;
	import com.capgemini.pmo.entity.ServiceLine;
	import com.capgemini.pmo.entity.Skills;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.beans.factory.annotation.Configurable;
	import org.springframework.core.convert.converter.Converter;
	import org.springframework.format.FormatterRegistry;

	privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {

	    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;

	    @Autowired
	    AccountDAO ApplicationConversionServiceFactoryBean.accountDAO;

	    @Autowired
	    AppsServiceLineDAO ApplicationConversionServiceFactoryBean.appsServiceLineDAO;

	    @Autowired
	    BUDAO ApplicationConversionServiceFactoryBean.bUDAO;

	    @Autowired
	    EmployeeMasterDAO ApplicationConversionServiceFactoryBean.employeeMasterDAO;

	    @Autowired
	    EmployeeRosterDAO ApplicationConversionServiceFactoryBean.employeeRosterDAO;

	    @Autowired
	    IDPDAO ApplicationConversionServiceFactoryBean.iDPDAO;


	    @Autowired
	    ProjectDAO ApplicationConversionServiceFactoryBean.projectDAO;

	    @Autowired
	    ServiceLineDAO ApplicationConversionServiceFactoryBean.serviceLineDAO;


	    @Autowired
	    SkillsDAO ApplicationConversionServiceFactoryBean.skillsDAO;

	    public Converter<Account, String> ApplicationConversionServiceFactoryBean.getAccountToStringConverter() {
		return new org.springframework.core.convert.converter.Converter<com.capgemini.pmo.entity.Account, java.lang.String>() {
		    public String convert(Account account) {
			return new StringBuilder().append(account.getName()).toString();
		    }
		};
	    }

	    public Converter<Long, Account> ApplicationConversionServiceFactoryBean.getIdToAccountConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.capgemini.pmo.entity.Account>() {
		    public com.capgemini.pmo.entity.Account convert(java.lang.Long id) {
			return accountDAO.findOne(id);
		    }
		};
	    }

	    public Converter<String, Account> ApplicationConversionServiceFactoryBean.getStringToAccountConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.String, com.capgemini.pmo.entity.Account>() {
		    public com.capgemini.pmo.entity.Account convert(String id) {
			return getObject().convert(getObject().convert(id, Long.class), Account.class);
		    }
		};
	    }

	    public Converter<AppsServiceLine, String> ApplicationConversionServiceFactoryBean.getAppsServiceLineToStringConverter() {
		return new org.springframework.core.convert.converter.Converter<com.capgemini.pmo.entity.AppsServiceLine, java.lang.String>() {
		    public String convert(AppsServiceLine appsServiceLine) {
			return new StringBuilder().append(appsServiceLine.getIdp().getBuorg().getBUName()).append(' ').append(appsServiceLine.getIdp().getName()).append(' ').append(appsServiceLine.getServiceline().getName()).toString();
		    }
		};
	    }

	    public Converter<Long, AppsServiceLine> ApplicationConversionServiceFactoryBean.getIdToAppsServiceLineConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.capgemini.pmo.entity.AppsServiceLine>() {
		    public com.capgemini.pmo.entity.AppsServiceLine convert(java.lang.Long id) {
			return appsServiceLineDAO.findOne(id);
		    }
		};
	    }

	    public Converter<String, AppsServiceLine> ApplicationConversionServiceFactoryBean.getStringToAppsServiceLineConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.String, com.capgemini.pmo.entity.AppsServiceLine>() {
		    public com.capgemini.pmo.entity.AppsServiceLine convert(String id) {
			return getObject().convert(getObject().convert(id, Long.class), AppsServiceLine.class);
		    }
		};
	    }

	    public Converter<BuisnessUnit, String> ApplicationConversionServiceFactoryBean.getBuisnessUnitToStringConverter() {
		return new org.springframework.core.convert.converter.Converter<com.capgemini.pmo.entity.BuisnessUnit, java.lang.String>() {
		    public String convert(BuisnessUnit buisnessUnit) {
			return new StringBuilder().append(buisnessUnit.getBUName()).toString();
		    }
		};
	    }

	    public Converter<Long, BuisnessUnit> ApplicationConversionServiceFactoryBean.getIdToBuisnessUnitConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.capgemini.pmo.entity.BuisnessUnit>() {
		    public com.capgemini.pmo.entity.BuisnessUnit convert(java.lang.Long id) {
			return bUDAO.findOne(id);
		    }
		};
	    }

	    public Converter<String, BuisnessUnit> ApplicationConversionServiceFactoryBean.getStringToBuisnessUnitConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.String, com.capgemini.pmo.entity.BuisnessUnit>() {
		    public com.capgemini.pmo.entity.BuisnessUnit convert(String id) {
			return getObject().convert(getObject().convert(id, Long.class), BuisnessUnit.class);
		    }
		};
	    }

	    public Converter<EmployeeMaster, String> ApplicationConversionServiceFactoryBean.getEmployeeMasterToStringConverter() {
		return new org.springframework.core.convert.converter.Converter<com.capgemini.pmo.entity.EmployeeMaster, java.lang.String>() {
		    public String convert(EmployeeMaster employeeMaster) {
			return new StringBuilder().append(employeeMaster.getEmpnum()).append(' ').append(employeeMaster.getName()).toString();
		    }
		};
	    }

	    public Converter<Long, EmployeeMaster> ApplicationConversionServiceFactoryBean.getIdToEmployeeMasterConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.capgemini.pmo.entity.EmployeeMaster>() {
		    public com.capgemini.pmo.entity.EmployeeMaster convert(java.lang.Long id) {
			return employeeMasterDAO.findOne(id);
		    }
		};
	    }

	    public Converter<String, EmployeeMaster> ApplicationConversionServiceFactoryBean.getStringToEmployeeMasterConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.String, com.capgemini.pmo.entity.EmployeeMaster>() {
		    public com.capgemini.pmo.entity.EmployeeMaster convert(String id) {
			return getObject().convert(getObject().convert(id, Long.class), EmployeeMaster.class);
		    }
		};
	    }

	    public Converter<EmployeeRoster, String> ApplicationConversionServiceFactoryBean.getEmployeeRosterToStringConverter() {
		return new org.springframework.core.convert.converter.Converter<com.capgemini.pmo.entity.EmployeeRoster, java.lang.String>() {
		    public String convert(EmployeeRoster employeeRoster) {
			return new StringBuilder().append(employeeRoster.getTaggingstartdate()).append(' ').append(employeeRoster.getTaggingenddate()).append(' ').append(employeeRoster.getPmocomments()).append(' ').append(employeeRoster.getRolloffdate()).toString();
		    }
		};
	    }

	    public Converter<Long, EmployeeRoster> ApplicationConversionServiceFactoryBean.getIdToEmployeeRosterConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.capgemini.pmo.entity.EmployeeRoster>() {
		    public com.capgemini.pmo.entity.EmployeeRoster convert(java.lang.Long id) {
			return employeeRosterDAO.findOne(id);
		    }
		};
	    }

	    public Converter<String, EmployeeRoster> ApplicationConversionServiceFactoryBean.getStringToEmployeeRosterConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.String, com.capgemini.pmo.entity.EmployeeRoster>() {
		    public com.capgemini.pmo.entity.EmployeeRoster convert(String id) {
			return getObject().convert(getObject().convert(id, Long.class), EmployeeRoster.class);
		    }
		};
	    }

	    public Converter<IDP, String> ApplicationConversionServiceFactoryBean.getIDPToStringConverter() {
		return new org.springframework.core.convert.converter.Converter<com.capgemini.pmo.entity.IDP, java.lang.String>() {
		    public String convert(IDP iDP) {
			return new StringBuilder().append(iDP.getBuorg().getBUName()).append(' ').append(iDP.getName()).toString();
		    }
		};
	    }

	    public Converter<Long, IDP> ApplicationConversionServiceFactoryBean.getIdToIDPConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.capgemini.pmo.entity.IDP>() {
		    public com.capgemini.pmo.entity.IDP convert(java.lang.Long id) {
			return iDPDAO.findOne(id);
		    }
		};
	    }

	    public Converter<String, IDP> ApplicationConversionServiceFactoryBean.getStringToIDPConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.String, com.capgemini.pmo.entity.IDP>() {
		    public com.capgemini.pmo.entity.IDP convert(String id) {
			return getObject().convert(getObject().convert(id, Long.class), IDP.class);
		    }
		};
	    }

	    public Converter<Project, String> ApplicationConversionServiceFactoryBean.getProjectToStringConverter() {
		return new org.springframework.core.convert.converter.Converter<com.capgemini.pmo.entity.Project, java.lang.String>() {
		    public String convert(Project project) {
			return new StringBuilder().append(project.getProjectCode()).append(' ').append(project.getProjectName()).toString();
		    }
		};
	    } 

	    public Converter<Long, Project> ApplicationConversionServiceFactoryBean.getIdToProjectConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.capgemini.pmo.entity.Project>() {
		    public com.capgemini.pmo.entity.Project convert(java.lang.Long id) {
			return projectDAO.findOne(id);
		    }
		};
	    }

	    public Converter<String, Project> ApplicationConversionServiceFactoryBean.getStringToProjectConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.String, com.capgemini.pmo.entity.Project>() {
		    public com.capgemini.pmo.entity.Project convert(String id) {
			return getObject().convert(getObject().convert(id, Long.class), Project.class);
		    }
		};
	    }

	    public Converter<ServiceLine, String> ApplicationConversionServiceFactoryBean.getServiceLineToStringConverter() {
		return new org.springframework.core.convert.converter.Converter<com.capgemini.pmo.entity.ServiceLine, java.lang.String>() {
		    public String convert(ServiceLine serviceLine) {
			return new StringBuilder().append(serviceLine.getName()).toString();
		    }
		};
	    }

	    public Converter<Long, ServiceLine> ApplicationConversionServiceFactoryBean.getIdToServiceLineConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.capgemini.pmo.entity.ServiceLine>() {
		    public com.capgemini.pmo.entity.ServiceLine convert(java.lang.Long id) {
			return serviceLineDAO.findOne(id);
		    }
		};
	    }

	    public Converter<String, ServiceLine> ApplicationConversionServiceFactoryBean.getStringToServiceLineConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.String, com.capgemini.pmo.entity.ServiceLine>() {
		    public com.capgemini.pmo.entity.ServiceLine convert(String id) {
			return getObject().convert(getObject().convert(id, Long.class), ServiceLine.class);
		    }
		};
	    }

	    public Converter<Skills, String> ApplicationConversionServiceFactoryBean.getSkillsToStringConverter() {
		return new org.springframework.core.convert.converter.Converter<com.capgemini.pmo.entity.Skills, java.lang.String>() {
		    public String convert(Skills skills) {
			return new StringBuilder().append(skills.getSkillname()).toString();
		    }
		};
	    }

	    public Converter<Long, Skills> ApplicationConversionServiceFactoryBean.getIdToSkillsConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.capgemini.pmo.entity.Skills>() {
		    public com.capgemini.pmo.entity.Skills convert(java.lang.Long id) {
			return skillsDAO.findOne(id);
		    }
		};
	    }

	    public Converter<String, Skills> ApplicationConversionServiceFactoryBean.getStringToSkillsConverter() {
		return new org.springframework.core.convert.converter.Converter<java.lang.String, com.capgemini.pmo.entity.Skills>() {
		    public com.capgemini.pmo.entity.Skills convert(String id) {
			return getObject().convert(getObject().convert(id, Long.class), Skills.class);
		    }
		};
	    }

	    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
		registry.addConverter(getAccountToStringConverter());
		registry.addConverter(getIdToAccountConverter());
		registry.addConverter(getStringToAccountConverter());
		registry.addConverter(getAppsServiceLineToStringConverter());
		registry.addConverter(getIdToAppsServiceLineConverter());
		registry.addConverter(getStringToAppsServiceLineConverter());
		registry.addConverter(getBuisnessUnitToStringConverter());
		registry.addConverter(getIdToBuisnessUnitConverter());
		registry.addConverter(getStringToBuisnessUnitConverter());
		registry.addConverter(getEmployeeMasterToStringConverter());
		registry.addConverter(getIdToEmployeeMasterConverter());
		registry.addConverter(getStringToEmployeeMasterConverter());
		registry.addConverter(getEmployeeRosterToStringConverter());
		registry.addConverter(getIdToEmployeeRosterConverter());
		registry.addConverter(getStringToEmployeeRosterConverter());
		registry.addConverter(getIDPToStringConverter());
		registry.addConverter(getIdToIDPConverter());
		registry.addConverter(getStringToIDPConverter());
		registry.addConverter(getProjectToStringConverter());
		registry.addConverter(getIdToProjectConverter());
		registry.addConverter(getStringToProjectConverter());
		registry.addConverter(getServiceLineToStringConverter());
		registry.addConverter(getIdToServiceLineConverter());
		registry.addConverter(getStringToServiceLineConverter());
		registry.addConverter(getSkillsToStringConverter());
		registry.addConverter(getIdToSkillsConverter());
		registry.addConverter(getStringToSkillsConverter());
	    }

	    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
		super.afterPropertiesSet();
		installLabelConverters(getObject());
	    }

	}
