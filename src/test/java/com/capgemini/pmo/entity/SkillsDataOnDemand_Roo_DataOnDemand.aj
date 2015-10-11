// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.entity;

import com.capgemini.pmo.dao.SkillsDAO;
import com.capgemini.pmo.entity.Skills;
import com.capgemini.pmo.entity.SkillsDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect SkillsDataOnDemand_Roo_DataOnDemand {
    
    declare @type: SkillsDataOnDemand: @Component;
    
    private Random SkillsDataOnDemand.rnd = new SecureRandom();
    
    private List<Skills> SkillsDataOnDemand.data;
    
    @Autowired
    SkillsDAO SkillsDataOnDemand.skillsDAO;
    
    public Skills SkillsDataOnDemand.getNewTransientSkills(int index) {
        Skills obj = new Skills();
        setSkillname(obj, index);
        return obj;
    }
    
    public void SkillsDataOnDemand.setSkillname(Skills obj, int index) {
        String skillname = "skillname_" + index;
        if (skillname.length() > 50) {
            skillname = skillname.substring(0, 50);
        }
        obj.setSkillname(skillname);
    }
    
    public Skills SkillsDataOnDemand.getSpecificSkills(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Skills obj = data.get(index);
        Long id = obj.getId();
        return skillsDAO.findOne(id);
    }
    
    public Skills SkillsDataOnDemand.getRandomSkills() {
        init();
        Skills obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return skillsDAO.findOne(id);
    }
    
    public boolean SkillsDataOnDemand.modifySkills(Skills obj) {
        return false;
    }
    
    public void SkillsDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = skillsDAO.findAll(new org.springframework.data.domain.PageRequest(from / to, to)).getContent();
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Skills' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Skills>();
        for (int i = 0; i < 10; i++) {
            Skills obj = getNewTransientSkills(i);
            try {
                skillsDAO.save(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            skillsDAO.flush();
            data.add(obj);
        }
    }
    
}