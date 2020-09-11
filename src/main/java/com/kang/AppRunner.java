package com.kang;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.kang
 * 3. 작성일 : 2020. 9. 11 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Component
public class AppRunner implements ApplicationRunner {

	@Value("${spring.profiles.active}")
	private String profiles;
	
	protected Log Logger = LogFactory.getLog(getClass());
	
	@Override
	public void run(ApplicationArguments args) throws Exception {
		if(Logger.isDebugEnabled()) {
			Logger.debug("=============================================");
			Logger.debug("active : " + profiles );
			Logger.debug("=============================================");
		}
	}

}
