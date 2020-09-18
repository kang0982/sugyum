package com.kang.login.service;

import org.apache.ibatis.annotations.Mapper;

import com.kang.login.vo.UserDetailVO;


/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.kang.login.service
 * 3. 작성일 : 2020. 9. 16 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Mapper
public interface LoginMapper {

	/**
	 * 로그인 정보 
	 * */
	UserDetailVO getLoginInfo(String id);
}
