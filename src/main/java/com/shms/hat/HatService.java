package com.shms.hat;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface HatService {
	public void registHat(Hat hat) throws Exception;
	public List<Hat> hatList(Hat hat) throws Exception;
	public Hat viewHat(Hat hat) throws Exception;
	public void editHat(Hat hat) throws Exception;
	public void delete(Hat hat) throws Exception;
}
