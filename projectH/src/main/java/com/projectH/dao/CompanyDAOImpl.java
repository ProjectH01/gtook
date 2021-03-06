package com.projectH.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.projectH.model.CompanyBean;
import com.projectH.model.EventBean;
import com.projectH.model.EventreqBean;


@Repository
public class CompanyDAOImpl implements CompanyDAO {

	@Autowired
	private SqlSession sqlsession;

	@Override
	public CompanyBean idcheck(String company_id) {
		return sqlsession.selectOne("id_check",company_id);
	}

	@Override
	public void insertjoin(CompanyBean companybean) {
		sqlsession.insert("company_in",companybean);
	}

	@Override
	public CompanyBean logincheck(String company_id) {
		return sqlsession.selectOne("login_check",company_id);
	}

	@Override
	public List<EventBean> geteventlist(EventBean eb) {
		return sqlsession.selectList("event_list",eb);
	}
	
	@Override
	public void insertevent(EventBean eventbean) {
		sqlsession.insert("event_in",eventbean);
	}

	@Override
	public void editevent(EventBean ev) {
		sqlsession.update("event_edit",ev);
	}

	@Override
	public EventBean geteventcont(String event) {
		return sqlsession.selectOne("event_cont",event);
	}

	@Override
	public void eventstateedit(EventBean eb) {
		sqlsession.update("eve_state_edit",eb);
	}

	@Override
	public int eventprogressLs(EventBean eb) {
		return sqlsession.selectOne("eve_progress_count",eb);
	}

	@Override
	public List<EventreqBean> eventreqlist(EventreqBean erb) {
		return sqlsession.selectList("eventreq_list",erb);
	}

	@Override
	public void csstateedit(EventreqBean erb) {
		sqlsession.update("cs_state_edit",erb);
	}

	@Override
	public int eventreqcount(EventreqBean erb) {
		return sqlsession.selectOne("eve_req_count",erb);
	}





}
