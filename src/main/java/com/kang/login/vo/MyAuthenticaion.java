package com.kang.login.vo;

import java.util.List;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.kang.login.vo
 * 3. 작성일 : 2020. 9. 16 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
public class MyAuthenticaion extends UsernamePasswordAuthenticationToken {
	private static final long serialVersionUID = 1L;

	  UserDetailVO user;

	  public MyAuthenticaion(String id, String password, List<GrantedAuthority> grantedAuthorityList, UserDetailVO user) {
	    super(user, password, grantedAuthorityList);
	    this.user = user;
	  }

}
