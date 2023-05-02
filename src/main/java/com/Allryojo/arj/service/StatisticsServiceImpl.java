package com.Allryojo.arj.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Allryojo.arj.repository.StatisticsDAO;
import com.Allryojo.arj.vo.PopulationVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class StatisticsServiceImpl implements StatisticsService{
	
	@Autowired
	private final StatisticsDAO dao;
	
	@Override
	public List<PopulationVO> getPopulationList() {
		// TODO Auto-generated method stub
		log.info("getPopulationList()...");
			
//			System.out.println(dao.population().get(0).getPopulation());
		
		return dao.population();
	}
	
	
}
