package com.Allryojo.arj.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.Allryojo.arj.vo.PopulationVO;

@Mapper
public interface StatisticsMapper {
	public List<PopulationVO> getPopulationList();
}
