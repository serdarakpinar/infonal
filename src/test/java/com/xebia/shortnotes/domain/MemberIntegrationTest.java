package com.xebia.shortnotes.domain;
import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;

@RooIntegrationTest(entity = Member.class, transactional = false)
public class MemberIntegrationTest {

    @Test
    public void testMarkerMethod() {
    }
}
