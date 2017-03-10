package com.ibm.gbs.gbs_cai_web.service;

import java.util.List;

import com.ibm.gbs.gbs_cai_web.vo.NoticeVO;

public interface NoticeService {

	public List<NoticeVO> getNoticeList() throws Exception;
	
	public void addNotice(NoticeVO vo) throws Exception;
	
	public void deleteNotice(int idx) throws Exception;
	
}
