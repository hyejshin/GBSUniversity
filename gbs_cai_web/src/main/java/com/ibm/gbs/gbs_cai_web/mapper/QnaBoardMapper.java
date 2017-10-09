package com.ibm.gbs.gbs_cai_web.mapper;

import java.util.List;

import com.ibm.gbs.gbs_cai_web.vo.FileVO;
import com.ibm.gbs.gbs_cai_web.vo.QnaBoardVO;

public interface QnaBoardMapper {

	public List<QnaBoardVO> getQnAList();

	public QnaBoardVO getQnA(int idx);

	public List<QnaBoardVO> getQnAComment(int ref);

	public void addQnA(QnaBoardVO vo);

	public void updateQnA(QnaBoardVO vo);

	public void increaseVisit(int idx, int visit);

	public void deleteQnA(int idx);

	/* 파일 로직 추가 */
	public Integer selectFileId(String board_id);

	public void addFile(FileVO vo);

	public void updateFile(FileVO vo);

	public void deleteFile(String file_id);

	public String getFileById(String file_id);

}
