/**
 * File         : BoardService.java
 * author       : Joosang Kim
 * version      : 0.0.1
 * description  : board service for this web app
 */
package com.ibm.gbs.gbs_cai_web.service;

import com.ibm.gbs.gbs_cai_web.vo.BoardVO;
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
    
}
