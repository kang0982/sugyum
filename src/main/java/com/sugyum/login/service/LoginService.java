package com.sugyum.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sugyum.login.vo.UserDetailVO;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.sugyum.login.service
 * 3. 작성일 : 2020. 9. 16 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Service
public class LoginService {

	@Autowired
	LoginMapper loginMapper ;

	/**
	 * 로그인 정보
	 * */
	public UserDetailVO getLoginInfo(String id){
		UserDetailVO resultVo = new UserDetailVO();
		resultVo = loginMapper.getLoginInfo(id);
		return resultVo;
	};
}
