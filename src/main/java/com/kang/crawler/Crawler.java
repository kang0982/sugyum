package com.kang.crawler;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Component;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.kang.crawler
 * 3. 작성일 : 2020. 9. 11 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Component
public class Crawler {

	protected Log Logger = LogFactory.getLog(getClass());
	
	public void Crawler() throws Exception {
		Logger.debug("=================== Crawler :" );
		
		Document google = Jsoup.connect("https://www.google.com/").get();
		
		String html = google.html();
		Logger.debug("html ============================================" );
		Logger.debug(html);

		Logger.debug("text ============================================" );
		Logger.debug(google.text());
	}
	
}
