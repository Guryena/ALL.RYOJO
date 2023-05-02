package com.Allryojo.arj.repository;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Repository;

import com.Allryojo.arj.vo.PopulationVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class StatisticsDAO {
	
	
	// 인증키 (개인이 받아와야함)
	private String key = "4c0414d3184caceca99cfc2f08030134a5645e4d";
	
	// 파싱한 데이터를 저장할 변수
	private String result = "";

	
	public List<PopulationVO> population(){
			List<PopulationVO> populations = new ArrayList<PopulationVO>();
		try {
		
		//e-stat page
		URL url = new URL("http://api.e-stat.go.jp/rest/3.0/app/json/getStatsData?appId="
				+ key + "&lang=J&statsDataId=0003448237&metaGetFlg=Y&cntGetFlg=N&explanationGetFlg=Y&annotationGetFlg=Y&sectionHeaderFlg=1&replaceSpChars=0");
		
		//JSON parsing
		BufferedReader bf;

		bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

		result = bf.readLine();

    	JSONParser jsonParser = new JSONParser();
    	JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
    	JSONObject statsData = (JSONObject)jsonObject.get("GET_STATS_DATA");
    	JSONObject statisticalData = (JSONObject)statsData.get("STATISTICAL_DATA");

    	//code number information
    	JSONObject classInf = (JSONObject)statisticalData.get("CLASS_INF");
    	JSONArray classObj = (JSONArray)classInf.get("CLASS_OBJ");
    	
    	//json data
    	JSONObject dataInf = (JSONObject)statisticalData.get("DATA_INF");
    	JSONArray value = (JSONArray)dataInf.get("VALUE");
    	
    	
    	
    		System.out.println();
    		for (int i = 0; i < value.size(); i++) {
    			Map<String, Object> getValue = (Map<String, Object>) value.get(i);
    			
    			//condition : time = 2022 , cat03 = only japanese , cat02 = all ages
    			if (getValue.get("@time").equals("1701") && getValue.get("@cat03").equals("002") && getValue.get("@cat02").equals("01000") && getValue.get("@cat01").equals("000")) {
    				String tab = (String) getValue.get("@tab"); //tabular item = population
    				String gender = (String) getValue.get("@cat1"); //000 = all , 001 = male , 002 = female
    				String age = (String) getValue.get("@cat2"); 

    				//01000 = all ages, 01001 = 0~4 years, 01002 = 5~9 years, 01003 = 10~14 years
    				//01004 = 15~19 years, 01005 = 20~24 years, 01006 = 25~29 years,
    				//01007 = 30~34 years, 01008 = 35~39 years, 01009 = 40~44 years,
    				//01010 = 45~49 years, 01011 = 50~54 years, 01012 = 55~59 years,
    				//01013 = 60~64 years, 01014 = 65~69 years, 01015 = 70~74 years,
    				//01016 = 75~79 years, 01017 = 80~84 years, 04018 = 85 years of age or older
    				String populationType = (String) getValue.get("@cat3");
    				String area = (String) getValue.get("@area"); 
    				String time = (String) getValue.get("@time"); //1601 = 2020.10.01, 1301 = 2021.10.01, 1701 = 2022.10.01
    				int population = Integer.parseInt(String.valueOf(getValue.get("$")))* 1000; //population
    				
    				
    				PopulationVO pVO = new PopulationVO(tab, gender, age, populationType, area, time, population);  
    				populations.add(pVO);
    				
    				
    			
    			}
    		}
    		

	}catch(Exception e) {
		e.printStackTrace();
	}
		return populations;
	}
}
