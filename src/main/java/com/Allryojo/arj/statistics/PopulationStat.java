//package com.Allryojo.arj.statistics;
//
//import java.io.BufferedReader;
//import java.io.InputStreamReader;
//import java.net.URL;
//import java.util.Map;
//
//import org.json.simple.JSONArray;
//import org.json.simple.JSONObject;
//import org.json.simple.parser.JSONParser;
//
//import com.Allryojo.arj.vo.PopulationVO;
//
//public class PopulationStat {
//
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//		// 인증키 (개인이 받아와야함)
//    	String key = "4c0414d3184caceca99cfc2f08030134a5645e4d";
//
//    	// 파싱한 데이터를 저장할 변수
//    	String result = "";
//
//    	try {
//
//    		URL url = new URL("http://api.e-stat.go.jp/rest/3.0/app/json/getStatsData?appId="
//    				+ key + "&lang=J&statsDataId=0003448237&metaGetFlg=Y&cntGetFlg=N&explanationGetFlg=Y&annotationGetFlg=Y&sectionHeaderFlg=1&replaceSpChars=0");
//
//    		BufferedReader bf;
//
//    		bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
//
//    		result = bf.readLine();
//
//        	JSONParser jsonParser = new JSONParser();
//        	JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
//        	JSONObject statsData = (JSONObject)jsonObject.get("GET_STATS_DATA");
//        	JSONObject statisticalData = (JSONObject)statsData.get("STATISTICAL_DATA");
//
//        	JSONObject classInf = (JSONObject)statisticalData.get("CLASS_INF");
//        	JSONArray classObj = (JSONArray)classInf.get("CLASS_OBJ");
//        	
//        	JSONObject dataInf = (JSONObject)statisticalData.get("DATA_INF");
//        	JSONArray value = (JSONArray)dataInf.get("VALUE");
//        	
////        	for (int i = 0; i < classObj.size(); i++) {
////        		System.out.println("id : " + classObj.get(i));
////				
////			}
////        		System.out.println();
//        	
//        	
//        		System.out.println();
//        		for (int i = 0; i < value.size(); i++) {
//        			Map<String, Object> getValue = (Map<String, Object>) value.get(i);
//        			
//        			if (getValue.get("@time").equals("1701") && getValue.get("@cat03").equals("002") && getValue.get("@cat02").equals("01000")) {
//        				String tab = (String) getValue.get("@tab");
//        				String gender = (String) getValue.get("@cat1");
//        				String age = (String) getValue.get("@cat2");
//        				String populationType = (String) getValue.get("@cat3");
//        				String area = (String) getValue.get("@area");
//        				String time = (String) getValue.get("@time");
//        				int population = (int) getValue.get("$") * 1000;
//        				
//        				
//        				PopulationVO pVO = new PopulationVO(tab, gender, age, populationType, area, time, population);  
//        				
//        			
//        			}
//        		}
//
//
//    	}catch(Exception e) {
//    		e.printStackTrace();
//    	}
//    }
//
//}
