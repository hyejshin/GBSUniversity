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
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
    @Autowired
    BoardMapper boardMapper;
    
    @Override
    public List<BoardVO> getBoardListByClassId(int idx) {
       return boardMapper.getBoardListByClassId(idx);
    }
    
}
