package com.ibm.gbs.gbs_cai_web.common;

public class StringUtils {
	
	public static String isStringNull(String str1) {
		if(( str1 == null ) || ( str1.length() < 1 )) {
			return "";
		}
		return str1;
	}
	
	public static int isZero(int digit1) {
		if( digit1 == 0 ) {
			return 0;
		}
		return digit1;
 	}
	
}
