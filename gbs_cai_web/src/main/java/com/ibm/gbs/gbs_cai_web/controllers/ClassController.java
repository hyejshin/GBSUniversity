package com.ibm.gbs.gbs_cai_web.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ibm.gbs.gbs_cai_web.common.StringUtils;
import com.ibm.gbs.gbs_cai_web.service.ClassService;
import com.ibm.gbs.gbs_cai_web.vo.ClassVO;

@Controller
public class ClassController {
	protected final Log logger = LogFactory.getLog(getClass());
	StringUtils util = new StringUtils();
	ClassVO classvo = new ClassVO();
	
	@Autowired
    private ClassService classService;
	
	/*
	 *  추가목적 : 클래스 상세보기 
	 *  추가이력 : 2017/03/05 신혜정
	 */
	@RequestMapping("/class/detail")
	public String classDetail(@RequestParam("class_id") String class_id, Model model) throws Exception {
                
                String board_id = "";
                String tempId = classService.getClassDetailById(class_id).getClass_id();
                
                board_id = tempId.replace("C", "B");
                
		model.addAttribute("vo", classService.getClassDetailById(class_id));
                model.addAttribute("board_id", board_id);
              
		return "detail_class";
	}
	
	@RequestMapping("/class/detailLec")
	public String classDetail(@RequestParam("title") String title, 
				@RequestParam("session") String session, Model model) throws Exception {
        
		model.addAttribute("vo", classService.getClassDetailByTitleSession(title, session));
		
		return "detail_class";
	}
	
	
	/*
	 *  추가목적 : 시간과 부스 둘 중에 하나라도 선택시 index.jsp에서 시간/부스를 Key 값으로 DB에서 select 후 JSON으로 뷰에 넘겨준다. 
	 *  추가이력 : 2017/02/20 정연우
	 * 
	 * 	 * */
	@RequestMapping(value = {"/class/findByBoothTime"}, method = RequestMethod.POST)
    public @ResponseBody List<Map<String, Object>> fetchClasses1(@RequestParam("booth")String booth,@RequestParam("time") String start) throws Exception {
		String _booth = util.isStringNull(booth);
		String _start = util.isStringNull(start);
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("booth", _booth);
		map.put("time", _start);
		List<Map<String, Object>> list = classService.getClassesByCondition(map);
		return list;
    }
	
	/*
	 *  추가목적 : 로그인 성공 후 사용자가 접할 화면으로, 수강전체목록을 보여준다.  
	 *  추가이력 : 2017/02/22 정연우
	 * 
	 * 	 * */
    @RequestMapping(value={"/class/findAll"}, method=RequestMethod.GET)
    public String classPage() throws Exception {
        return "index";
    }
    
    /*
	 *  추가목적 : 시간/부스 선택시 나오면 클래스에서  Read를 눌렀을 때 상세조회가 가능하다. 
	 *    기타    : 현재 클래스의 정보를 list에 담는거까지만 구현하였습니다. 뷰에 foreach로 뿌려주기만 하면 됩니다.  
         *    수정    : 1. 질문글 목록 가져오기
	 *  추가이력 : 2017/02/23 정연우
	 *  수정이력 : 2017/03/04 최미수   
                      2017/03/05 김주상
	 * 	 * */
    
    @RequestMapping(value={"/class/viewDetail"}, method=RequestMethod.GET)
    public ModelAndView viewDetail(@RequestParam("idx") String class_id) throws Exception{
        ClassVO classInfo = classService.getDetailByCondition(class_id);
        int totalPage = 1;
        

    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("detail_class");
        mv.addObject("vo", classInfo);
        
        return mv;
    }
    
    /*
	 *  추가목적 : 로그인 성공 후 사용자가 접할 화면으로, 처음 선택된 시간/부스의 클래스를 보여준다  
	 *  추가이력 : 2017/02/23 정연우
	 * 
	 * 	 * */
    
    @RequestMapping(value={"/class/findFirstView"}, method=RequestMethod.POST)
    public @ResponseBody List<Map<String, Object>> fetchFirstView(@RequestParam("booth") String booth,@RequestParam("time") String start) throws Exception {
    	String _booth = util.isStringNull(booth);
		String _start = util.isStringNull(start);
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("booth", _booth);
		map.put("time", _start);
		List<Map<String, Object>> list = classService.getClassesByCondition(map);
		return list;
    }
    
    
    // /class/viewThisLec
    
    /* 	
   	 *  추가목적 : 내 수강목록에서 선택한 강의 수강
   	 *  추가이력 : 2017/02/25 정연우
   	 * 
   	 * 	 * */
    //이 기능 꼭 필수적으로 안해도 된다고 하셔서 함수 없애도 됨
    @RequestMapping(value={"/class/viewThisLec"}, method=RequestMethod.GET)
    public ModelAndView viewThisLec(@RequestParam("class_id") String class_id) throws Exception{
        String _class_id = util.isStringNull(class_id);
        List<Map<String, Object>> LecInfo = classService.getThisLec(_class_id);
                
        ModelAndView mv = new ModelAndView();
        mv.setViewName("detail_class");
        mv.addObject("list", LecInfo);
        return mv;
    }
    
    /* 	
   	 *  추가목적 : 사용자가 입력한 코드와 동일하면 enrollment 테이블의 attend_yn을 'N' -> 'Y'로 Update
   	 *  추가이력 : 2017/02/26 정연우
   	 * 
   	 * 	 * */
    @RequestMapping(value={"/class/checkCode"}, method=RequestMethod.POST)
    public  HashMap<String,Object> updateFlag(@RequestParam("class_id") String class_id,@RequestParam("user_id") String user_id,
    		@RequestParam("code") String code) throws Exception{
    	Model model = new ExtendedModelMap();
        String _class_id = util.isStringNull(class_id);
        String _user_id = util.isStringNull(user_id);
        String _code = util.isStringNull(code);
        System.out.println("class_id : "+_class_id+" user_id : "+_user_id+" code : "+_code);
        
        HashMap<String,Object> map1 = new HashMap<String,Object>(); // Flag Update하기 위해 service에 넘기는 map
        HashMap<String,Object> map2 = new HashMap<String,Object>(); // Code Check하기 위해 service에 넘기는 map
		HashMap<String,Object> msg = new HashMap<String,Object>(); // 코드입력 성공여부에 따라 msg 전달
        
        map1.put("class_id", _class_id);
		map1.put("user_id", _user_id);
		
        map2.put("class_id",_class_id);
        map2.put("code", _code);
        
		if( classService.checkCode(map2) == 1) {
			classService.updateFlag(map1);
			msg.put("msg", "Code Input Success!");
		} else {
			msg.put("msg", "Code Input Fail!");
		}
        return msg;
       
    }
    
    /* 	
   	 *  추가목적 : 현재 사용자가 신청한 클래스 목록을 가져온다. 
   	 *  추가이력 : 2017/02/25 정연우
   	 * 
   	 * 	 * */
    @RequestMapping(value={"/class/viewMyLec"}, method=RequestMethod.GET)
    public ModelAndView viewMyLec(@RequestParam("user_id") String user_id) throws Exception{
        String _user_id = util.isStringNull(user_id);
        //List<Map<String, Object>> myInfo = classService.getMyLec(_user_id);
                
        ModelAndView mv = new ModelAndView();
        mv.setViewName("history");
        //mv.addObject("list", myInfo);
        return mv;
    }
    
}
