package com.projectH.service;
import java.util.List;

import com.projectH.model.EventBean;
import com.projectH.model.GtookBean;

public interface GtookService {


	void insertUserInfo(GtookBean user);//처음 접속자 db에 저장

	GtookBean loadUserInfo(String userId);//user정보 불러오기

	String useridCheck(String userId);//아이디 체크

	List<EventBean> getContent(String state);//내용불러오기

	EventBean getDetailcont(EventBean eventbean);//이벤트 세부내용 불러오기

	void updateHit(EventBean eventbean);



}

