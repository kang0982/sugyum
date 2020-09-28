package com.sugyum.test.service;

import org.apache.ibatis.annotations.Mapper;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.sugyum.test.service
 * 3. 작성일 : 2020. 9. 11 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Mapper
public interface TestMapper {

	public String getCurrentDateTime();
}
