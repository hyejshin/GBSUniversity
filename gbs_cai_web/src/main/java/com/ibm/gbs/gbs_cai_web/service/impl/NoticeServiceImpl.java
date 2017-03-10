package com.ibm.gbs.gbs_cai_web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.gbs.gbs_cai_web.mapper.NoticeMapper;
import com.ibm.gbs.gbs_cai_web.service.NoticeService;
import com.ibm.gbs.gbs_cai_web.vo.NoticeVO;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeMapper noticeMapper;
	
	public List<NoticeVO> getNoticeList() throws Exception {
		
		return noticeMapper.getNoticeList();
	}
	
	public void addNotice(NoticeVO vo) throws Exception {
		
		noticeMapper.addNotice(vo);
	}
	
	public void deleteNotice(int idx) throws Exception {
		
		noticeMapper.deleteNotice(idx);
	}
	
}
