/**
 * File         : BoardService.java
 * author       : Joosang Kim
 * version      : 0.0.1
 * description  : board service for this web app
 */
package com.ibm.gbs.gbs_cai_web.service;

import com.ibm.gbs.gbs_cai_web.vo.BoardVO;
import com.ibm.gbs.gbs_cai_web.vo.CommentVO;
import com.ibm.gbs.gbs_cai_web.vo.FileVO;

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
    
    /**
     * select board idx 
     * author : Yeonwoo Jung
     * param : 
     */
    public int selectBoardIdx(); 
    
    /**
     * insert board content's file 
     * author : Yeonwoo Jung
     * param : 
     */
    public void insertNewBoardFileContent(FileVO fileVO);
    
    /**
     * get board list 
     * author : Yeonwoo Jung
     * param : 
     */
    public List<BoardVO> getBoardList();
    
    /**
     * get board detail 
     * author : Yeonwoo Jung
     * param : 
     */    
    public List<BoardVO> getBoardDetail(BoardVO boardVO);
    
    /**
     * get file by file_id(unique) 
     * author : Yeonwoo Jung
     * param : 
     */
    public String getFileById(String fileId);
    
}
