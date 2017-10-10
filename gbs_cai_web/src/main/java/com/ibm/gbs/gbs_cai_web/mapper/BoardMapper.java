/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.mapper;

import com.ibm.gbs.gbs_cai_web.vo.BoardVO;
import com.ibm.gbs.gbs_cai_web.vo.CommentVO;
import com.ibm.gbs.gbs_cai_web.vo.FileVO;

import java.util.List;
import org.apache.ibatis.annotations.Param;

/**
 *
 * @author kr055045
 */
public interface BoardMapper {
    public List<BoardVO> getBoardListByClassId(@Param("class_id") String class_id);
    public int insertNewBoardConetent(BoardVO boardvo);
    public int insertComment(CommentVO commentvo);
    public int modifyBoardContent(@Param("idx")      int idx
                                , @Param("class_id") String class_id
                                , @Param("board_id") String board_id
                                , @Param("detail")   String detail);
    public int selectBoardIdx();
    public void insertNewBoardFileContent(FileVO fileVO);
    public List<BoardVO> getBoardList();
    public List<BoardVO> getBoardDetail(BoardVO boardVO);
    public String getFileById(String fileId);
}