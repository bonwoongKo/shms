package com.shms.hat.service;

import java.util.List;

public interface HatService {
	public void registHat(Hat hat) throws Exception;
	public List<Hat> hatList() throws Exception;
	public Hat viewHat(Hat hat) throws Exception;
	public void editHat(Hat hat) throws Exception;
	public void delete(Hat hat) throws Exception;
}
