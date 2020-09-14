package com.kang.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.kang.test.service
 * 3. 작성일 : 2020. 9. 11 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Service
public class TestService {
	
	@Autowired
	private TestMapper testMapper;
	
	public String getCurrentDateTime() {
		return testMapper.getCurrentDateTime();
	};
}
