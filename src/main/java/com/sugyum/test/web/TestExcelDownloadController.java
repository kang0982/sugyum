package com.sugyum.test.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.sugyum.test.web
 * 3. 작성일 : 2020. 9. 15 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
@Controller
@RequestMapping("/test/excelDownload")
public class TestExcelDownloadController {

	@RequestMapping(path="/sample", produces = "application/vnd.ms-excel")
	public String downloadSample() {
		return "sampleXls";
	}
}
