/**
 * File         : BoardController.java
 * author       : Joosang Kim
 * version      : 0.0.1
 * description  : Board Controller for this web app
 */
package com.ibm.gbs.gbs_cai_web.controllers;

import com.ibm.gbs.gbs_cai_web.service.BoardService;
import com.ibm.gbs.gbs_cai_web.service.EnrollmentService;
import com.ibm.gbs.gbs_cai_web.vo.BoardVO;
import com.ibm.gbs.gbs_cai_web.vo.CommentVO;
import com.ibm.gbs.gbs_cai_web.vo.EnrollmentVO;
import com.ibm.gbs.gbs_cai_web.vo.UserVO;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * board Controller author : Joosang Kim
 */
@Controller
public class BoardController {

    @Autowired
    UserVO user;
    @Autowired
    BoardVO boardvo;
    @Autowired
    EnrollmentVO enrollment;
    @Autowired
    CommentVO commentvo;
    @Autowired
    EnrollmentService enrollmentService;
    @Autowired
    BoardService boardService;

    @RequestMapping(value = "/board", method = RequestMethod.GET)
    public ModelAndView showMyBoardList(ModelMap model, HttpServletRequest req, HttpServletResponse res, HttpSession session) {
        ModelAndView mv = new ModelAndView();
        List<EnrollmentVO> enrollmentList = new ArrayList<EnrollmentVO>();
        enrollmentList = null;
        user = (UserVO) session.getAttribute(("user"));

        //1.get classes user enrolement
        //enrollmentList = enrollmentService.getEnrollmentByUserId(user.getUser_id());

        mv.setViewName("board");
        mv.addObject("enrollmentList", enrollmentList);

        return mv;
    }
    
    /**
     * get board list about class idx 
     */
    @RequestMapping(value="/board/getBoardListByClassId", method=RequestMethod.GET)
    public @ResponseBody List<BoardVO>getBoardListByClassId(@RequestParam("class_id") String class_id){      
        List<BoardVO> boardList = new ArrayList<BoardVO>();
        List<CommentVO> commentList = new ArrayList<CommentVO>();
        
        boardList = boardService.getBoardListByClassId(class_id);
        
        
          
        return boardList;
    }
    
    /**
     * add question
     */
    @RequestMapping(value="/board/postQuestion", method=RequestMethod.POST)
    public @ResponseBody List<BoardVO>postQuestion(@RequestParam("detail") String detail,
                                                   @RequestParam("board_id") String board_id,
                                                   @RequestParam("class_id") String class_id, 
                                                   @RequestParam("type")    String type, 
                                                   HttpServletResponse res,
                                                   HttpSession session) throws Exception{       
        int ret = 0;

        user = (UserVO)session.getAttribute("user");
        String user_id = user.getUser_id();
        type= String.valueOf(type.charAt(0));
        
        boardvo = new BoardVO(board_id, class_id, user_id, detail, type);
        ret = boardService.insertNewBoardConetent(boardvo);
        
        if(ret<0){
            throw new Exception();
        }
        return boardService.getBoardListByClassId(class_id);
    }
    
    
    @RequestMapping(value="/board/modifyQuestion", method=RequestMethod.POST)
    public @ResponseBody List<BoardVO>modifyQuestion(@RequestParam("detail") String detail,
                                                   @RequestParam("board_id") String board_id,
                                                   @RequestParam("class_id") String class_id, 
                                                   @RequestParam("type")    String type,
                                                   @RequestParam("idx")     int idx,
                                                   HttpServletResponse res,
                                                   HttpSession session) throws Exception{       
        int ret = 0;        
        ret = boardService.modifyBoardContent(idx, class_id, board_id, detail);        
    
        if(ret<0){
            throw new Exception();
        }
        return boardService.getBoardListByClassId(class_id);
    }
    
    /**
     * add comment
     */
    @RequestMapping(value="/board/postAnswer", method=RequestMethod.POST)
    public @ResponseBody List<BoardVO>postAnswer(@RequestParam("answerDetail") String answerDetail,
                                                   @RequestParam("board_id") String board_id,
                                                   @RequestParam("class_id") String class_id, 
                                                   @RequestParam("idx")    String idx, 
                                                   HttpSession session) throws Exception{       
        int ret = 0;

        user = (UserVO)session.getAttribute("user");
        String user_id = user.getUser_id();
        
        commentvo = new CommentVO(class_id, board_id, Integer.valueOf(idx), answerDetail, user_id);
        
        
        ret = boardService.insertComment(commentvo);
        
        if(ret<0){
            throw new Exception();
        }
        return boardService.getBoardListByClassId(class_id);
    }

}
