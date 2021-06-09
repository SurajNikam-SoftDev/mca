package com.apnidukaan.features;

import java.io.UnsupportedEncodingException;
import java.util.Base64;

public class URLEncoderDecoderBase64 {
	
	public static void main(String[] args) throws UnsupportedEncodingException {
		simpleEncodingAndDecoding();
		
		final String textDate = "1";
		String encodedText = Base64.getUrlEncoder().encodeToString(textDate.getBytes("UTF-8"));
		System.out.println(encodedText);
		
		byte[] decodedArr = Base64.getUrlDecoder().decode(encodedText);
		String decodedText = new String(decodedArr, "UTF-8");
		
		System.out.println(decodedText);
	}

	private static void simpleEncodingAndDecoding() throws UnsupportedEncodingException {
		final String textDate = "1";
		String encodedText = Base64.getEncoder().encodeToString(textDate.getBytes("UTF-8"));
		System.out.println(encodedText);
		
		byte[] decodedArr = Base64.getDecoder().decode(encodedText);
		String decodedText = new String(decodedArr, "UTF-8");
		
		System.out.println(decodedText);
	}
	
	public static String URLEncoder(String urlToEncoded) throws UnsupportedEncodingException{
		String encodeurl = Base64.getUrlEncoder().encodeToString(urlToEncoded.getBytes("UTF-8"));
		System.out.println(encodeurl);
		
		return encodeurl;
	}
	
	public static String URLDecoder(String encodedToUrl) throws UnsupportedEncodingException {
		byte[] decodedArr = Base64.getUrlDecoder().decode(encodedToUrl);
		String decodedUrl = new String(decodedArr, "UTF-8");
		
		return decodedUrl;
	}

}
