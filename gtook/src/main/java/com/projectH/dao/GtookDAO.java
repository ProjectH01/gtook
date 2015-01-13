package com.projectH.dao;

import java.util.List;

import com.projectH.model.EventBean;
import com.projectH.model.GtookBean;

public interface GtookDAO {



	void insertUserInfo(GtookBean user);

	GtookBean loadUserInfo(String userId);

	String useridCheck(String userId);

	List<EventBean> getContent(String state);

	EventBean getDetailcont(EventBean eventbean);


}
