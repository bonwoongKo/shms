package com.shms.hat.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shms.hat.service.Hat;
import com.shms.hat.service.HatMapper;
import com.shms.hat.service.HatService;

@Service
public class HatServiceImpl implements HatService {
	@Autowired
	private HatMapper hatMapper;
	
	@Override
	public void registHat(Hat hat) throws Exception {
		hatMapper.insert(hat);
	}

	@Override
	public List<Hat> hatList() throws Exception {
		
		return hatMapper.list();
	}

	@Override
	public Hat viewHat(Hat hat) throws Exception {
		
		return hatMapper.select(hat);
	}

	@Override
	public void editHat(Hat hat) throws Exception {
		hatMapper.update(hat);
	}

	@Override
	public void delete(Hat hat) throws Exception {
		hatMapper.delete(hat);
	}

}
