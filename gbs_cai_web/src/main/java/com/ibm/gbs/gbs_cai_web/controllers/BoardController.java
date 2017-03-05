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
import com.ibm.gbs.gbs_cai_web.vo.EnrollmentVO;
import com.ibm.gbs.gbs_cai_web.vo.UserVO;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
        boardList = boardService.getBoardListByClassId(class_id);
          
        return boardList;
    }
    
    /**
     * add question
     */
    @RequestMapping(value="/board/postQuestion", method=RequestMethod.GET)
    public @ResponseBody List<BoardVO>postQuestion(@RequestParam("detail") String detail,
                                                   @RequestParam("board_id") String board_id,
                                                   @RequestParam("class_id") String class_id, 
                                                   HttpSession session){        
        //UserVO
//        List<BoardVO> boardList = new ArrayList<BoardVO>();
//        boardList = null;
//        boardList = boardService.getBoardListByClassId(class_id);
          
        return null;
    }

}
