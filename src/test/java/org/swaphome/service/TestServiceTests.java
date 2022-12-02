package org.swaphome.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.swaphome.domain.TestVO;
//import org.zerock.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class TestServiceTests {

	@Setter(onMethod_ = { @Autowired })
	private TestService service;

	@Test
	public void testExist() {

		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testRegister() {

		TestVO test = new TestVO();
		test.setName("r");
		test.setGradeNum("r");
		test.setGrade("r");
		test.setCla("r");
		test.setRegNum("r");
		test.setPhone("r");
		test.setAddress("r");
		test.setState("r");

		service.register(test);

		log.info("생성된 게시물의 이름: " + test.getName());
	}
	
	@Test
	public void testGetList() {

		service.getList().forEach(board -> log.info(board));
		//service.getList(new Criteria(2, 10)).forEach(board -> log.info(board));
	}
	
	@Test
	public void testGet() {

		log.info(service.get("1"));
	}
}
