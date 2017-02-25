package com.ibm.gbs.gbs_cai_web.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
	 *  추가이력 : 2017/02/23 정연우
	 * 
	 * 	 * */
    
    @RequestMapping(value={"/class/viewDetail"}, method=RequestMethod.GET)
    public ModelAndView viewDetail(@RequestParam("idx")int idx) throws Exception{
        int _idx = util.isZero(idx);
        List<Map<String, Object>> detailInfo = classService.getDetailByCondition(_idx);
        
        System.out.println(detailInfo.size());
        
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("single");
        mv.addObject("list", detailInfo);
        
        return mv;
    }
    
}
