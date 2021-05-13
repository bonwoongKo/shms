package com.shms.hat;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface HatService {
	public void registHat(Hat hat);
	public List<Hat> hatList(Hat hat);
	public Hat viewHat(Hat hat);
	public void editHat(Hat hat);
	public void delete(Hat hat);
}
