package com.ibm.gbs.gbs_cai_web.mapper;

import java.util.List;

import com.ibm.gbs.gbs_cai_web.vo.NoticeVO;

public interface NoticeMapper {

	public List<NoticeVO> getNoticeList();
	
	public void addNotice(NoticeVO vo);
	
	public void deleteNotice(int idx);
	
}
