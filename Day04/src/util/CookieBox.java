package util;

import java.util.Map;
import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;


public class CookieBox {
	// Cookie 목록을 Map에 저장해서 관리한다.
	private Map<String, Cookie> cookieMap = new HashMap<String, Cookie>();
	
	// 생성자를 통하여 맵에 저장함.
	public CookieBox(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		// 쿠키 데이터를 Map에 모두 저장.
		// 구조 cookieMap(cookies 의 이름값, cookies의 전체 값(키, 값))
		for (int i = 0; i < cookies.length; i++) {
			// Map에 데이터 저장
			cookieMap.put(cookies[i].getName(), cookies[i]);
		}
	}
	
	// 쿠키를 검색하는 메소드.
	public Cookie getCookie(String name) {
		return cookieMap.get(name);
	}
	
	// 검색을 기반으로 값을 가져올 수 있는 메소드.
	public String getValue(String name) {
		String result = null;
		Cookie cookie = getCookie(name);
		
		if(cookie != null) {
			result = cookie.getValue();
		}
		
		return result;
	}
	
	// 쿠키가 존재하는지 확인 하는 메소드.
	public boolean isExist(String name) {
		boolean isExist = false;
		if (cookieMap.get(name) != null) {
			isExist = true;
		}
		
		return isExist;
	}

	// 쿠키 데이터를 생성하는 메소드 - 오버로딩으로 여러개를 만들 예정.
 	public static Cookie createCookie(String name, String value) {
		return new Cookie(name, value);
	}
	
	public static Cookie createCookie(
			String name, 
			String value, 
			String path, 
			int maxAge) {
		
		Cookie cookie = new Cookie(name, value);
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		
		return cookie;
	}
	
	/*
	 * public static Cookie createCookie( String name, String value, String domain,
	 * int maxAge) {
	 * 
	 * Cookie cookie = new Cookie(name, value); cookie.setDomain(domain);
	 * cookie.setMaxAge(maxAge);
	 * 
	 * return cookie; }
	 */
	
}
