/**
 * File         : EnrollementServiceImpl.java
 * author       : Joosang Kim
 * version      : 0.0.1
 * description  : enrollment service impl for this web app
 *                interface : service.BoardService.class   
*/
package com.ibm.gbs.gbs_cai_web.service.impl;

import com.ibm.gbs.gbs_cai_web.mapper.BoardMapper;
import com.ibm.gbs.gbs_cai_web.service.BoardService;
import com.ibm.gbs.gbs_cai_web.vo.BoardVO;
import com.ibm.gbs.gbs_cai_web.vo.CommentVO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
    @Autowired
    BoardMapper boardMapper;
    
    @Override
    public List<BoardVO> getBoardListByClassId(String class_id) {
       return boardMapper.getBoardListByClassId(class_id);
    }

    @Override
    public int insertNewBoardConetent(BoardVO boardvo) {
        return boardMapper.insertNewBoardConetent(boardvo);
    }

    @Override
    public int insertComment(CommentVO commentvo) {
        return boardMapper.insertComment(commentvo);
    }

    @Override
    public int modifyBoardContent(int idx, String class_id, String board_id, String detail) {
        return boardMapper.modifyBoardContent(idx, class_id,  board_id,  detail);
    }
    
}
