package com.Allryojo.arj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Allryojo.arj.repository.StatisticsDAO;
import com.Allryojo.arj.vo.HospitalVO;
import com.Allryojo.arj.vo.PopulationVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class StatisticsServiceImpl implements StatisticsService{
	
	@Autowired
	private final StatisticsDAO statDao;

	
	@Override
	public List<PopulationVO> getPopulationList() {
		// TODO Auto-generated method stub
		log.info("getPopulationList()...");
			
//			System.out.println(dao.population().get(0).getPopulation());
		
		return statDao.population();
	}

	@Override
	public List<HospitalVO> getHospitalList() {
		// TODO Auto-generated method stub
		log.info("getHospitalList()...");
		
		return statDao.hospital();
	}
	
	
}
