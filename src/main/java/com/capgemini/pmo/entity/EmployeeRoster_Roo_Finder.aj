// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.entity;

import com.capgemini.pmo.constant.AccountStatus;
import com.capgemini.pmo.entity.EmployeeRoster;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect EmployeeRoster_Roo_Finder {
    
    public static Long EmployeeRoster.countFindEmployeeRostersByAccountstatusEquals(AccountStatus accountstatus) {
        if (accountstatus == null) throw new IllegalArgumentException("The accountstatus argument is required");
        EntityManager em = EmployeeRoster.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM EmployeeRoster AS o WHERE o.accountstatus = :accountstatus", Long.class);
        q.setParameter("accountstatus", accountstatus);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<EmployeeRoster> EmployeeRoster.findEmployeeRostersByAccountstatusEquals(AccountStatus accountstatus) {
        if (accountstatus == null) throw new IllegalArgumentException("The accountstatus argument is required");
        EntityManager em = EmployeeRoster.entityManager();
        TypedQuery<EmployeeRoster> q = em.createQuery("SELECT o FROM EmployeeRoster AS o WHERE o.accountstatus = :accountstatus", EmployeeRoster.class);
        q.setParameter("accountstatus", accountstatus);
        return q;
    }
    
    public static TypedQuery<EmployeeRoster> EmployeeRoster.findEmployeeRostersByAccountstatusEquals(AccountStatus accountstatus, String sortFieldName, String sortOrder) {
        if (accountstatus == null) throw new IllegalArgumentException("The accountstatus argument is required");
        EntityManager em = EmployeeRoster.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM EmployeeRoster AS o WHERE o.accountstatus = :accountstatus");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<EmployeeRoster> q = em.createQuery(queryBuilder.toString(), EmployeeRoster.class);
        q.setParameter("accountstatus", accountstatus);
        return q;
    }
    
}