package com.sugyum.master.member.web;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.sugyum.master.member.web
 * 3. 작성일 : 2020. 9. 21 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Controller
@RequestMapping("/master/member/")
public class MasterMemberController {

	protected Log Logger = LogFactory.getLog(getClass());
	
	private static String PREFIX = "/master/member/";
	
	@RequestMapping("userMgmtList")
	public String userMgmtList(HttpServletRequest request) throws Exception {
		return PREFIX + "userMgmtList";
	}

	@RequestMapping("userMgmtRegist")
	public String userMgmtRegist(HttpServletRequest request) throws Exception {
		return PREFIX + "userMgmtRegist";
	}
	
	
}
