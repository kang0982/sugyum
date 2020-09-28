package com.sugyum.login.vo;

import java.io.Serializable;

import lombok.Data;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.sugyum.login.vo
 * 3. 작성일 : 2020. 9. 16 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Data
public class UserDetailVO implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String id = "";
	private String pwd = "";
	private String name = "";
	private String userKind = "";
	
}
