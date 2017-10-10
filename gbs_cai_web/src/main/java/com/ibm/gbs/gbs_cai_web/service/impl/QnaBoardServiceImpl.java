package com.ibm.gbs.gbs_cai_web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.gbs.gbs_cai_web.mapper.QnaBoardMapper;
import com.ibm.gbs.gbs_cai_web.service.QnaBoardService;
import com.ibm.gbs.gbs_cai_web.vo.FileVO;
import com.ibm.gbs.gbs_cai_web.vo.QnaBoardVO;

@Service("qnaboardService")
public class QnaBoardServiceImpl implements QnaBoardService {

	@Autowired
	private QnaBoardMapper qnaboardMapper;

	public List<QnaBoardVO> getQnAList() throws Exception {

		return qnaboardMapper.getQnAList();
	}

	public QnaBoardVO getQnA(int idx) throws Exception {

		return qnaboardMapper.getQnA(idx);
	}

	public List<QnaBoardVO> getQnAComment(int ref) throws Exception {

		return qnaboardMapper.getQnAComment(ref);
	}

	public void addQnA(QnaBoardVO vo) throws Exception {

		qnaboardMapper.addQnA(vo);
	}

	public void updateQnA(QnaBoardVO vo) throws Exception {

		qnaboardMapper.updateQnA(vo);
	}

	public void increaseVisit(int idx, int visit) throws Exception {

		qnaboardMapper.increaseVisit(idx, visit);
	}

	public void deleteQnA(int idx) throws Exception {

		qnaboardMapper.deleteQnA(idx);
	}

	/* 파일 로직 추가 */
	public Integer selectFileId(String board_id) throws Exception {
		return qnaboardMapper.selectFileId(board_id);
	}
	
	public String selectBoardId(int idx) throws Exception {
		return qnaboardMapper.selectBoardId(idx);
	}

	public void addFile(FileVO vo) throws Exception {
		qnaboardMapper.addFile(vo);
	}

	public void updateFile(FileVO vo) throws Exception {
		qnaboardMapper.updateFile(vo);
	}

	public void deleteFile(String file_id) throws Exception {
		qnaboardMapper.deleteFile(file_id);
	}

	public String getFileById(String file_id) throws Exception {
		return qnaboardMapper.getFileById(file_id);
	}

}
