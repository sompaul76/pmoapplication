// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.entity;

import com.capgemini.pmo.entity.EmployeeRoster;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect EmployeeRoster_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager EmployeeRoster.entityManager;
    
    public static final List<String> EmployeeRoster.fieldNames4OrderClauseFilter = java.util.Arrays.asList("emp", "projectcode", "taggingstartdate", "taggingenddate", "billability", "accountstatus", "pmocomments", "rolloffdate", "rolloffreason", "source", "accntstartdate", "availability");
    
    public static final EntityManager EmployeeRoster.entityManager() {
        EntityManager em = new EmployeeRoster().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long EmployeeRoster.countEmployeeRosters() {
        return entityManager().createQuery("SELECT COUNT(o) FROM EmployeeRoster o", Long.class).getSingleResult();
    }
    
    public static List<EmployeeRoster> EmployeeRoster.findAllEmployeeRosters() {
        return entityManager().createQuery("SELECT o FROM EmployeeRoster o", EmployeeRoster.class).getResultList();
    }
    
    public static List<EmployeeRoster> EmployeeRoster.findAllEmployeeRosters(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM EmployeeRoster o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, EmployeeRoster.class).getResultList();
    }
    
    public static EmployeeRoster EmployeeRoster.findEmployeeRoster(Long id) {
        if (id == null) return null;
        return entityManager().find(EmployeeRoster.class, id);
    }
    
    public static List<EmployeeRoster> EmployeeRoster.findEmployeeRosterEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM EmployeeRoster o", EmployeeRoster.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<EmployeeRoster> EmployeeRoster.findEmployeeRosterEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM EmployeeRoster o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, EmployeeRoster.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void EmployeeRoster.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void EmployeeRoster.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            EmployeeRoster attached = EmployeeRoster.findEmployeeRoster(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void EmployeeRoster.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void EmployeeRoster.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public EmployeeRoster EmployeeRoster.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        EmployeeRoster merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
