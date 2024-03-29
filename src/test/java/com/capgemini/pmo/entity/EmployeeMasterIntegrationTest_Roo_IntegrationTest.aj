// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.entity;

import com.capgemini.pmo.dao.EmployeeMasterDAO;
import com.capgemini.pmo.entity.EmployeeMasterDataOnDemand;
import com.capgemini.pmo.entity.EmployeeMasterIntegrationTest;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect EmployeeMasterIntegrationTest_Roo_IntegrationTest {
    
    declare @type: EmployeeMasterIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: EmployeeMasterIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: EmployeeMasterIntegrationTest: @Transactional;
    
    @Autowired
    EmployeeMasterDataOnDemand EmployeeMasterIntegrationTest.dod;
    
    @Autowired
    EmployeeMasterDAO EmployeeMasterIntegrationTest.employeeMasterDAO;
    
    @Test
    public void EmployeeMasterIntegrationTest.testCount() {
        Assert.assertNotNull("Data on demand for 'EmployeeMaster' failed to initialize correctly", dod.getRandomEmployeeMaster());
        long count = employeeMasterDAO.count();
        Assert.assertTrue("Counter for 'EmployeeMaster' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void EmployeeMasterIntegrationTest.testFind() {
        EmployeeMaster obj = dod.getRandomEmployeeMaster();
        Assert.assertNotNull("Data on demand for 'EmployeeMaster' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'EmployeeMaster' failed to provide an identifier", id);
        obj = employeeMasterDAO.findOne(id);
        Assert.assertNotNull("Find method for 'EmployeeMaster' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'EmployeeMaster' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void EmployeeMasterIntegrationTest.testFindAll() {
        Assert.assertNotNull("Data on demand for 'EmployeeMaster' failed to initialize correctly", dod.getRandomEmployeeMaster());
        long count = employeeMasterDAO.count();
        Assert.assertTrue("Too expensive to perform a find all test for 'EmployeeMaster', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<EmployeeMaster> result = employeeMasterDAO.findAll();
        Assert.assertNotNull("Find all method for 'EmployeeMaster' illegally returned null", result);
        Assert.assertTrue("Find all method for 'EmployeeMaster' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void EmployeeMasterIntegrationTest.testFindEntries() {
        Assert.assertNotNull("Data on demand for 'EmployeeMaster' failed to initialize correctly", dod.getRandomEmployeeMaster());
        long count = employeeMasterDAO.count();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<EmployeeMaster> result = employeeMasterDAO.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
        Assert.assertNotNull("Find entries method for 'EmployeeMaster' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'EmployeeMaster' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void EmployeeMasterIntegrationTest.testFlush() {
        EmployeeMaster obj = dod.getRandomEmployeeMaster();
        Assert.assertNotNull("Data on demand for 'EmployeeMaster' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'EmployeeMaster' failed to provide an identifier", id);
        obj = employeeMasterDAO.findOne(id);
        Assert.assertNotNull("Find method for 'EmployeeMaster' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyEmployeeMaster(obj);
        Integer currentVersion = obj.getVersion();
        employeeMasterDAO.flush();
        Assert.assertTrue("Version for 'EmployeeMaster' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void EmployeeMasterIntegrationTest.testSaveUpdate() {
        EmployeeMaster obj = dod.getRandomEmployeeMaster();
        Assert.assertNotNull("Data on demand for 'EmployeeMaster' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'EmployeeMaster' failed to provide an identifier", id);
        obj = employeeMasterDAO.findOne(id);
        boolean modified =  dod.modifyEmployeeMaster(obj);
        Integer currentVersion = obj.getVersion();
        EmployeeMaster merged = employeeMasterDAO.save(obj);
        employeeMasterDAO.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'EmployeeMaster' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void EmployeeMasterIntegrationTest.testSave() {
        Assert.assertNotNull("Data on demand for 'EmployeeMaster' failed to initialize correctly", dod.getRandomEmployeeMaster());
        EmployeeMaster obj = dod.getNewTransientEmployeeMaster(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'EmployeeMaster' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'EmployeeMaster' identifier to be null", obj.getId());
        try {
            employeeMasterDAO.save(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        employeeMasterDAO.flush();
        Assert.assertNotNull("Expected 'EmployeeMaster' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void EmployeeMasterIntegrationTest.testDelete() {
        EmployeeMaster obj = dod.getRandomEmployeeMaster();
        Assert.assertNotNull("Data on demand for 'EmployeeMaster' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'EmployeeMaster' failed to provide an identifier", id);
        obj = employeeMasterDAO.findOne(id);
        employeeMasterDAO.delete(obj);
        employeeMasterDAO.flush();
        Assert.assertNull("Failed to remove 'EmployeeMaster' with identifier '" + id + "'", employeeMasterDAO.findOne(id));
    }
    
}
