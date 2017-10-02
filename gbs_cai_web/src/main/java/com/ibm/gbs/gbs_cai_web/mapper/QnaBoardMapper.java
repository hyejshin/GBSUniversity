package com.ibm.gbs.gbs_cai_web.mapper;

import java.util.List;

import com.ibm.gbs.gbs_cai_web.vo.QnaBoardVO;

public interface QnaBoardMapper {

	public List<QnaBoardVO> getQnAList();
	
	public QnaBoardVO getQnA(int idx);
	
	public List<QnaBoardVO> getQnAComment(int ref);
	
	public void addQnA(QnaBoardVO vo);
	
	public void updateQnA(QnaBoardVO vo);
	
	public void increaseVisit(int idx, int visit);
	
	public void deleteQnA(int idx);
	
}
