package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.laptrinhjavaweb.entity.Rate;
import com.laptrinhjavaweb.repository.RateRepository;

@Service
public class RateService {
	
	@Autowired
	private RateRepository RateRP;

	public boolean saveRate(Rate rate) {
		return RateRP.save(rate) != null;
	}

	public List<Rate> findAll() {
		return RateRP.findAll();
	}

	public Rate findId(long id) {
		return RateRP.findOne(id);
	}


}
