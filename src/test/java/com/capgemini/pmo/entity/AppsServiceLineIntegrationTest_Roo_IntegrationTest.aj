// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.entity;

import com.capgemini.pmo.dao.AppsServiceLineDAO;
import com.capgemini.pmo.entity.AppsServiceLineDataOnDemand;
import com.capgemini.pmo.entity.AppsServiceLineIntegrationTest;
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

privileged aspect AppsServiceLineIntegrationTest_Roo_IntegrationTest {
    
    declare @type: AppsServiceLineIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: AppsServiceLineIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: AppsServiceLineIntegrationTest: @Transactional;
    
    @Autowired
    AppsServiceLineDataOnDemand AppsServiceLineIntegrationTest.dod;
    
    @Autowired
    AppsServiceLineDAO AppsServiceLineIntegrationTest.appsServiceLineDAO;
    
    @Test
    public void AppsServiceLineIntegrationTest.testCount() {
        Assert.assertNotNull("Data on demand for 'AppsServiceLine' failed to initialize correctly", dod.getRandomAppsServiceLine());
        long count = appsServiceLineDAO.count();
        Assert.assertTrue("Counter for 'AppsServiceLine' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void AppsServiceLineIntegrationTest.testFind() {
        AppsServiceLine obj = dod.getRandomAppsServiceLine();
        Assert.assertNotNull("Data on demand for 'AppsServiceLine' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'AppsServiceLine' failed to provide an identifier", id);
        obj = appsServiceLineDAO.findOne(id);
        Assert.assertNotNull("Find method for 'AppsServiceLine' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'AppsServiceLine' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void AppsServiceLineIntegrationTest.testFindAll() {
        Assert.assertNotNull("Data on demand for 'AppsServiceLine' failed to initialize correctly", dod.getRandomAppsServiceLine());
        long count = appsServiceLineDAO.count();
        Assert.assertTrue("Too expensive to perform a find all test for 'AppsServiceLine', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<AppsServiceLine> result = appsServiceLineDAO.findAll();
        Assert.assertNotNull("Find all method for 'AppsServiceLine' illegally returned null", result);
        Assert.assertTrue("Find all method for 'AppsServiceLine' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void AppsServiceLineIntegrationTest.testFindEntries() {
        Assert.assertNotNull("Data on demand for 'AppsServiceLine' failed to initialize correctly", dod.getRandomAppsServiceLine());
        long count = appsServiceLineDAO.count();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<AppsServiceLine> result = appsServiceLineDAO.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
        Assert.assertNotNull("Find entries method for 'AppsServiceLine' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'AppsServiceLine' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void AppsServiceLineIntegrationTest.testFlush() {
        AppsServiceLine obj = dod.getRandomAppsServiceLine();
        Assert.assertNotNull("Data on demand for 'AppsServiceLine' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'AppsServiceLine' failed to provide an identifier", id);
        obj = appsServiceLineDAO.findOne(id);
        Assert.assertNotNull("Find method for 'AppsServiceLine' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyAppsServiceLine(obj);
        Integer currentVersion = obj.getVersion();
        appsServiceLineDAO.flush();
        Assert.assertTrue("Version for 'AppsServiceLine' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AppsServiceLineIntegrationTest.testSaveUpdate() {
        AppsServiceLine obj = dod.getRandomAppsServiceLine();
        Assert.assertNotNull("Data on demand for 'AppsServiceLine' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'AppsServiceLine' failed to provide an identifier", id);
        obj = appsServiceLineDAO.findOne(id);
        boolean modified =  dod.modifyAppsServiceLine(obj);
        Integer currentVersion = obj.getVersion();
        AppsServiceLine merged = appsServiceLineDAO.save(obj);
        appsServiceLineDAO.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'AppsServiceLine' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AppsServiceLineIntegrationTest.testSave() {
        Assert.assertNotNull("Data on demand for 'AppsServiceLine' failed to initialize correctly", dod.getRandomAppsServiceLine());
        AppsServiceLine obj = dod.getNewTransientAppsServiceLine(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'AppsServiceLine' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'AppsServiceLine' identifier to be null", obj.getId());
        try {
            appsServiceLineDAO.save(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        appsServiceLineDAO.flush();
        Assert.assertNotNull("Expected 'AppsServiceLine' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void AppsServiceLineIntegrationTest.testDelete() {
        AppsServiceLine obj = dod.getRandomAppsServiceLine();
        Assert.assertNotNull("Data on demand for 'AppsServiceLine' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'AppsServiceLine' failed to provide an identifier", id);
        obj = appsServiceLineDAO.findOne(id);
        appsServiceLineDAO.delete(obj);
        appsServiceLineDAO.flush();
        Assert.assertNull("Failed to remove 'AppsServiceLine' with identifier '" + id + "'", appsServiceLineDAO.findOne(id));
    }
    
}
