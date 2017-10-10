package com.ibm.gbs.gbs_cai_web.service;

import java.util.List;

import com.ibm.gbs.gbs_cai_web.vo.FileVO;
import com.ibm.gbs.gbs_cai_web.vo.QnaBoardVO;

public interface QnaBoardService {

	public List<QnaBoardVO> getQnAList() throws Exception;

	public QnaBoardVO getQnA(int idx) throws Exception;

	public List<QnaBoardVO> getQnAComment(int ref) throws Exception;

	public void addQnA(QnaBoardVO vo) throws Exception;

	public void updateQnA(QnaBoardVO vo) throws Exception;

	public void increaseVisit(int idx, int visit) throws Exception;

	public void deleteQnA(int idx) throws Exception;

	/* 파일 로직 추가 */
	public Integer selectFileId(String board_id) throws Exception;
	
	public String selectBoardId(int idx) throws Exception;

	public void addFile(FileVO vo) throws Exception;

	public void updateFile(FileVO vo) throws Exception;

	public void deleteFile(String file_id) throws Exception;

	public String getFileById(String file_id) throws Exception;

}
