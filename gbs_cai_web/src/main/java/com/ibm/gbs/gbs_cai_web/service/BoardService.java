/**
 * File         : BoardService.java
 * author       : Joosang Kim
 * version      : 0.0.1
 * description  : board service for this web app
 */
package com.ibm.gbs.gbs_cai_web.service;

import com.ibm.gbs.gbs_cai_web.vo.BoardVO;
import com.ibm.gbs.gbs_cai_web.vo.CommentVO;
import java.util.List;

/**
 * Author : Joosang Kim
 */
public interface BoardService {
    /**
     * Get board list by class id
     * author : Joosang Kim
     * param : String(class_idx)
     */
    public List<BoardVO> getBoardListByClassId(String class_id);
    /**
     * insert new board contents
     * author : Joosang Kim
     * param : BoardVO boardvo
     */
    public int insertNewBoardConetent(BoardVO boardvo);
    /**
     * modify board contents
     * author : Joosang Kim
     * param : String class_id, String board_id, String detail
     */
    public int modifyBoardContent(int idx, String class_id, String board_id, String detail);
    
    /**
     * insert comment 
     * author : Joosang Kim
     * param : CommentVO commentvo
     */
    public int insertComment(CommentVO commentvo);
    
}
