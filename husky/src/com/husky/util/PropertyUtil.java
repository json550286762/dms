package com.husky.util;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class PropertyUtil {

	public static void main(String[] args) {

		//updateValueByKey("/access_token.properties","access_token","9sas92ssj2js1d2ks9");
		String value = getValueByKey("/access_token.properties","access_token");
		System.out.println(value);
	}

	/**
	 * 
	* @Title: getValueByKey 
	* @Description: 根据key获取value
	* @author hxzhou
	* @param @param fileName
	* @param @param key
	* @param @return    
	* @return String    
	* @throws
	 */
	public static String getValueByKey(String fileName,String key) {
		Properties properties = new Properties();
		try {
			InputStream inputStream = new FileInputStream(fileName);
			properties.load(inputStream);
			inputStream.close(); // 关闭流
		} catch (IOException e) {
			e.printStackTrace();
		}
		return properties.getProperty(key);
	}


	/**
	 * 
	* @Title: updateValueByKey 
	* @Description: 根据key更新value
	* @author hxzhou
	* @param @param filename
	* @param @param key
	* @param @param value    
	* @return void    
	* @throws
	 */
	public static void updateValueByKey(String filename,String key,String value) {
		Properties properties = new Properties();
		try {
			OutputStream outputStream = new FileOutputStream(filename);
			properties.setProperty(key, value);
			properties.store(outputStream, null);
			outputStream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
