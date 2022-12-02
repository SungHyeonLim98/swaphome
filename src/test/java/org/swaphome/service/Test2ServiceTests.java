package org.swaphome.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.swaphome.domain.Test2VO;
//import org.zerock.domain.Criteria;
import org.swaphome.domain.TestVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class Test2ServiceTests {

	@Setter(onMethod_ = { @Autowired })
	private Test2Service service;
	
	@Test
	public void testRegister() {

		Test2VO test = new Test2VO();
		test.setName("w");
		test.setGradeNum("w");
		test.setRegNum("w");
		test.setPhone("w");

		service.register(test);

		log.info("생성된 게시물의 이름: " + test.getName());
	}
}
