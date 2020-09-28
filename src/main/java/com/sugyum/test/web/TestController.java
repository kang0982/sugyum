package com.sugyum.test.web;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sugyum.test.service.TestService;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.sugyum.test.web
 * 3. 작성일 : 2020. 9. 11 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Controller
@RequestMapping("/test")
public class TestController {

	@Autowired
	private TestService testService;
	
	protected Log Logger = LogFactory.getLog(getClass());
	
	@RequestMapping("")
	public String main() {
		String now = testService.getCurrentDateTime();
		Logger.debug(now);
		return "test/test";
	}
	
}
