package com.kang.comn.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.boot.autoconfigure.web.servlet.error.AbstractErrorController;
import org.springframework.boot.web.error.ErrorAttributeOptions;
import org.springframework.boot.web.servlet.error.ErrorAttributes;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
@RequestMapping("${server.error.path}")
public class MyErrorController extends  AbstractErrorController    {

	/**
	 * @param errorAttributes
	 */
	public MyErrorController(ErrorAttributes errorAttributes) {
		super(errorAttributes);
	}

	protected Log Logger = LogFactory.getLog(getClass());
	
	private static String PRIFIX = "/error/";

	@RequestMapping(produces = MediaType.TEXT_HTML_VALUE)
	public String errorHtml(HttpServletRequest request) {
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

	@RequestMapping(produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Map<String, Object> handleError(HttpServletRequest request) {
        Map<String, Object> errorAttributes = super.getErrorAttributes(request, true);
        return errorAttributes;
    }
	
	@Override
	public String getErrorPath(){
		return null;
	}
	
	

}
