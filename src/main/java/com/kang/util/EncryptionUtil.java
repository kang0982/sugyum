package com.kang.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Component;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.kang.util
 * 3. 작성일 : 2020. 9. 16 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */

public class EncryptionUtil {
	
	protected Log Logger = LogFactory.getLog(getClass());
	
	/**
	 * 문자열을 SHA-256 방식으로 암호화
	 * @param txt 암호화 하려하는 문자열
	 * @return String
	 * @throws Exception
	 */
	public static String getEncSHA256(String txt) {
	    StringBuffer sbuf = new StringBuffer();
	    try {
		    MessageDigest mDigest = MessageDigest.getInstance("SHA-256");
		    mDigest.update(txt.getBytes());
		     
		    byte[] msgStr = mDigest.digest() ;
		     
		    for(int i=0; i < msgStr.length; i++){
		        byte tmpStrByte = msgStr[i];
		        String tmpEncTxt = Integer.toString((tmpStrByte & 0xff) + 0x100, 16).substring(1);
		         
		        sbuf.append(tmpEncTxt) ;
		    }
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
	     
	    return sbuf.toString();
	}

	/**
	 * 문자열을 MD-5 방식으로 암호화
	 * @param txt 암호화 하려하는 문자열
	 * @return String
	 * @throws Exception
	 */
	public static String getEncMD5(String txt)  {
	     
		try {
	         // Create MD5 Hash
	         MessageDigest digest = java.security.MessageDigest
	                 .getInstance("MD5");
	         digest.update(txt.getBytes());
	         byte messageDigest[] = digest.digest();
	  
	         // Create Hex String
	         StringBuffer hexString = new StringBuffer();
	         for (int i = 0; i < messageDigest.length; i++) {
	             String h = Integer.toHexString(0xFF & messageDigest[i]);
	             while (h.length() < 2)
	                 h = "0" + h;
	             hexString.append(h);
	         }
	         return hexString.toString();
	  
	     } catch (NoSuchAlgorithmException e) {
	         e.printStackTrace();
	     }
	     return "";

	}	
}
