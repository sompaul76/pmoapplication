// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.capgemini.pmo.entity;

import com.capgemini.pmo.dao.BUDAO;
import com.capgemini.pmo.entity.BuisnessUnitDataOnDemand;
import com.capgemini.pmo.entity.BuisnessUnitIntegrationTest;
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

privileged aspect BuisnessUnitIntegrationTest_Roo_IntegrationTest {
    
    declare @type: BuisnessUnitIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: BuisnessUnitIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: BuisnessUnitIntegrationTest: @Transactional;
    
    @Autowired
    BuisnessUnitDataOnDemand BuisnessUnitIntegrationTest.dod;
    
    @Autowired
    BUDAO BuisnessUnitIntegrationTest.bUDAO;
    
    @Test
    public void BuisnessUnitIntegrationTest.testCount() {
        Assert.assertNotNull("Data on demand for 'BuisnessUnit' failed to initialize correctly", dod.getRandomBuisnessUnit());
        long count = bUDAO.count();
        Assert.assertTrue("Counter for 'BuisnessUnit' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void BuisnessUnitIntegrationTest.testFind() {
        BuisnessUnit obj = dod.getRandomBuisnessUnit();
        Assert.assertNotNull("Data on demand for 'BuisnessUnit' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'BuisnessUnit' failed to provide an identifier", id);
        obj = bUDAO.findOne(id);
        Assert.assertNotNull("Find method for 'BuisnessUnit' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'BuisnessUnit' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void BuisnessUnitIntegrationTest.testFindAll() {
        Assert.assertNotNull("Data on demand for 'BuisnessUnit' failed to initialize correctly", dod.getRandomBuisnessUnit());
        long count = bUDAO.count();
        Assert.assertTrue("Too expensive to perform a find all test for 'BuisnessUnit', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<BuisnessUnit> result = bUDAO.findAll();
        Assert.assertNotNull("Find all method for 'BuisnessUnit' illegally returned null", result);
        Assert.assertTrue("Find all method for 'BuisnessUnit' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void BuisnessUnitIntegrationTest.testFindEntries() {
        Assert.assertNotNull("Data on demand for 'BuisnessUnit' failed to initialize correctly", dod.getRandomBuisnessUnit());
        long count = bUDAO.count();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<BuisnessUnit> result = bUDAO.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
        Assert.assertNotNull("Find entries method for 'BuisnessUnit' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'BuisnessUnit' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void BuisnessUnitIntegrationTest.testFlush() {
        BuisnessUnit obj = dod.getRandomBuisnessUnit();
        Assert.assertNotNull("Data on demand for 'BuisnessUnit' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'BuisnessUnit' failed to provide an identifier", id);
        obj = bUDAO.findOne(id);
        Assert.assertNotNull("Find method for 'BuisnessUnit' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyBuisnessUnit(obj);
        Integer currentVersion = obj.getVersion();
        bUDAO.flush();
        Assert.assertTrue("Version for 'BuisnessUnit' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void BuisnessUnitIntegrationTest.testSaveUpdate() {
        BuisnessUnit obj = dod.getRandomBuisnessUnit();
        Assert.assertNotNull("Data on demand for 'BuisnessUnit' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'BuisnessUnit' failed to provide an identifier", id);
        obj = bUDAO.findOne(id);
        boolean modified =  dod.modifyBuisnessUnit(obj);
        Integer currentVersion = obj.getVersion();
        BuisnessUnit merged = bUDAO.save(obj);
        bUDAO.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'BuisnessUnit' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void BuisnessUnitIntegrationTest.testSave() {
        Assert.assertNotNull("Data on demand for 'BuisnessUnit' failed to initialize correctly", dod.getRandomBuisnessUnit());
        BuisnessUnit obj = dod.getNewTransientBuisnessUnit(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'BuisnessUnit' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'BuisnessUnit' identifier to be null", obj.getId());
        try {
            bUDAO.save(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        bUDAO.flush();
        Assert.assertNotNull("Expected 'BuisnessUnit' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void BuisnessUnitIntegrationTest.testDelete() {
        BuisnessUnit obj = dod.getRandomBuisnessUnit();
        Assert.assertNotNull("Data on demand for 'BuisnessUnit' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'BuisnessUnit' failed to provide an identifier", id);
        obj = bUDAO.findOne(id);
        bUDAO.delete(obj);
        bUDAO.flush();
        Assert.assertNull("Failed to remove 'BuisnessUnit' with identifier '" + id + "'", bUDAO.findOne(id));
    }
    
}
