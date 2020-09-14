package com.kang.main.web;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kang.crawler.Crawler;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : main.web
 * 3. 작성일 : 2020. 9. 11 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Controller
public class MainController {

	protected Log Logger = LogFactory.getLog(getClass());
	
	@Autowired
	private Crawler crawler; 
	
	@RequestMapping("/")
	private String main() throws Exception{
		Logger.debug("main!!");
		return "main";
	}
	
	
	@RequestMapping("/crawler")
	private String crawler() throws Exception{
		crawler.Crawler();
		return "crawler/crawler";
	}
	
	
}
