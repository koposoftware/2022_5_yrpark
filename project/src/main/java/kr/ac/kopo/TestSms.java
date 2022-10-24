package kr.ac.kopo;

import java.util.HashMap;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class TestSms {

	public static void main(String[] args) {
		
		  String api_key = "";
		  String api_secret = "";
		  Message coolsms = new Message(api_key, api_secret);

		  HashMap<String, String> set = new HashMap<String, String>();
		  set.put("to", ""); // 수신번호
		  set.put("from", ""); // 발신번호
		  set.put("text", "[하나케어] 기록미션을 진행하지 않았습니다. 건강을 기록하고 포인트도 받아가세요!"); // 문자내용
		  set.put("type", "sms"); // 문자 타입
		  set.put("app_version", "test app 1.2"); 

		  System.out.println(set);
		  try {
		  JSONObject result = coolsms.send(set); // 보내기&전송결과받기

		  System.out.println(result.toString());
	    } catch (CoolsmsException e) {
	      System.out.println(e.getMessage());
	      System.out.println(e.getCode());
	    }

		}

	}

