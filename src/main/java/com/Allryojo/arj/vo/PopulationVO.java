package com.Allryojo.arj.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
@AllArgsConstructor
public class PopulationVO {
	private String tab;
	private String gender;
	private String age;
	private String populationType;
	private String area;
	private String time;
	private int population;
}
