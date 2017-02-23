/**
 * File         : BoardController.java
 * author       : Joosang Kim
 * version      : 0.0.1
 * description  : Board Controller for this web app
 */
package com.ibm.gbs.gbs_cai_web.controllers;

import com.ibm.gbs.gbs_cai_web.vo.UserVO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author kr055045
 */
@Controller
public class BoardController {
    
    @Autowired
    UserVO user;
    
    @RequestMapping(value="/board", method = RequestMethod.GET)
    public String showMyBoardList(ModelMap model, HttpServletRequest req, HttpServletResponse res, HttpSession session){
        user = (UserVO)session.getAttribute(("user"));
        
        System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% : " +session.getAttribute("user") + "DDDDDDDDDDD ;" + user.getUser_id());
        
        return "board";
    
    }
    
}
