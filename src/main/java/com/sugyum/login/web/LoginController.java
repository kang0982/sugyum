package com.sugyum.login.web;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.sugyum.login.web
 * 3. 작성일 : 2020. 9. 16 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Controller
public class LoginController {

	protected Log Logger = LogFactory.getLog(getClass());
	
	private static final String PREFIX = "/login/"; 
	
	@RequestMapping("login")
	public String login(HttpServletRequest request, ModelMap model) {
		String error = request.getParameter("error");
		model.addAttribute("error", error);
		return PREFIX + "login";
	}
}
