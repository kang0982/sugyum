package com.kang.comn.web;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.kang.comn
 * 3. 작성일 : 2020. 9. 15 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Controller
public class MyErrorController implements  ErrorController   {
    
	protected Log Logger = LogFactory.getLog(getClass());
	
	private static String PRIFIX = "/error/";
	
	@RequestMapping("/error")
	public String handleError(HttpServletRequest request) {
	    Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
	    
	    if (status != null) {
	        Integer statusCode = Integer.valueOf(status.toString());
	    
	        if(statusCode == HttpStatus.NOT_FOUND.value()) {
	            return PRIFIX + "error-404";
	        }
	        else if(statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
	        	return PRIFIX + "error-500";
	        }
	    }
	    return PRIFIX + "error";
	}
	
	@Override
	public String getErrorPath() {
	    return null;
	}
}
