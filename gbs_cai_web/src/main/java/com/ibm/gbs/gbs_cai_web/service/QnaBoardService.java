package com.ibm.gbs.gbs_cai_web.service;

import java.util.List;

import com.ibm.gbs.gbs_cai_web.vo.QnaBoardVO;

public interface QnaBoardService {

	public List<QnaBoardVO> getQnAList() throws Exception;
	
	public QnaBoardVO getQnA(int idx) throws Exception;
	
	public List<QnaBoardVO> getQnAComment(int ref) throws Exception;

	public void addQnA(QnaBoardVO vo) throws Exception;

	public void updateQnA(QnaBoardVO vo) throws Exception;

	public void increaseVisit(int idx, int visit) throws Exception;

	public void deleteQnA(int idx) throws Exception;
	
}
