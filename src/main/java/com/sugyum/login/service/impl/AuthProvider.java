package com.sugyum.login.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import com.sugyum.login.service.LoginService;
import com.sugyum.login.vo.MyAuthenticaion;
import com.sugyum.login.vo.UserDetailVO;
import com.sugyum.util.EncryptionUtil;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.sugyum.login.service.impl
 * 3. 작성일 : 2020. 9. 16 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Component
public class AuthProvider implements AuthenticationProvider {

	@Autowired
	LoginService userService;

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String id = authentication.getName();
        String password = EncryptionUtil.getEncMD5(authentication.getCredentials().toString());
        
        UserDetailVO user = null;
        
        user = userService.getLoginInfo(id);
        
        // email에 맞는 user가 없거나 비밀번호가 맞지 않는 경우.
        if (null == user || !user.getPwd().equals(password)) {
            return null;
        }

        
        List<GrantedAuthority> grantedAuthorityList = new ArrayList<>();
        
        // 로그인한 계정에게 권한 부여( 현재 로그인은 관리자만 )
        grantedAuthorityList.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
        
        // 로그인 성공시 로그인 사용자 정보 반환
        return new MyAuthenticaion(id, password, grantedAuthorityList, user);

	}

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }

}
