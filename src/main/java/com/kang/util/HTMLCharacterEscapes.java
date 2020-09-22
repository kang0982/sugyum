package com.kang.util;

import org.apache.commons.lang3.StringEscapeUtils;

import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.SerializedString;

/**
 * <pre>
 * 1. 프로젝트명 :
 * 2. 패키지명 : com.kang.util
 * 3. 작성일 : 2020. 9. 18 
 * 4. 작성자 : kang
 * 5. 설명 :
 * </pre>
 */
public class HTMLCharacterEscapes extends CharacterEscapes {

	private final int[] asciiEscapes;

    public HTMLCharacterEscapes() {
        // XSS 방지 처리할 특수 문자 지정
        asciiEscapes = CharacterEscapes.standardAsciiEscapesForJSON();
        asciiEscapes['<'] = CharacterEscapes.ESCAPE_CUSTOM;
        asciiEscapes['>'] = CharacterEscapes.ESCAPE_CUSTOM;
        asciiEscapes['&'] = CharacterEscapes.ESCAPE_CUSTOM;
    }

    @Override
    public int[] getEscapeCodesForAscii() {
        return asciiEscapes;
    }

    @SuppressWarnings("deprecation")
	@Override
    public SerializableString getEscapeSequence(int ch) {
         return new SerializedString(StringEscapeUtils.escapeHtml4(Character.toString((char) ch)));
    }

}
