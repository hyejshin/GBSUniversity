package com.ibm.gbs.gbs_cai_web.service.impl;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.gbs.gbs_cai_web.mapper.ClassMapper;
import com.ibm.gbs.gbs_cai_web.service.ClassService;
import com.ibm.gbs.gbs_cai_web.vo.ClassVO;

@Service("classService")
public class ClassServiceImpl implements ClassService {

    private final Logger logger = Logger.getLogger(ClassServiceImpl.class);

    @Autowired
    private ClassMapper classMapper;

    public List<Map<String, Object>> getClassesByCondition(HashMap<String, Object> map) throws Exception {

        return classMapper.getClassesByCondition(map);
    }

    public ClassVO getDetailByCondition(String class_id) throws Exception {
        return classMapper.getDetailByCondition(class_id);
    }
    
    /*
	 * class 관련 - 신혜정
     */
    
    // 클래스 상세 class_id로 조회
    public ClassVO getClassDetailById(String class_id) throws Exception {
        return classMapper.getClassDetailById(class_id);
    }
    
    // 클래스 상세 title & room 으로 조회
    public ClassVO getClassDetailByTitleSession(String title, String session) throws Exception {
    	return classMapper.getClassDetailByTitleSession(title, session);
    }
    
    

    /*
	 * class Admin 관련 - 신혜정
     */
    
    // 클래스 목록
    public List<ClassVO> getClassList() throws Exception {
        return classMapper.getClassList();
    }

    // 해당 세션 클래스 목록
    public List<ClassVO> getClassListBySession(String session) throws Exception {
        return classMapper.getClassListBySession(session);
    }
    
    // 클래스 상세
    public ClassVO getClassDetail(int idx) throws Exception {
        return classMapper.getClassDetail(idx);
    }

    // 클래스 등록
    public void addClass(ClassVO vo) throws Exception {
        classMapper.addClass(vo);
    }

    // 클래스 수정
    public void modifyClass(ClassVO vo) throws Exception {
        classMapper.modifyClass(vo);
    }

    // 클래스 삭제
    public void deleteClass(int idx) throws Exception {
        classMapper.deleteClass(idx);
    }

    public void downloadFile(String fileName, String path, HttpServletResponse response) {
        try {
            byte fileByte[] = FileUtils.readFileToByteArray(new File(path + fileName));

            response.setContentType("application/octet-stream");
            response.setContentLength(fileByte.length);
            response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(fileName, "UTF-8") + "\";");
            response.setHeader("Content-Transfer-Encoding", "binary");
            response.getOutputStream().write(fileByte);
            response.getOutputStream().flush();
            response.getOutputStream().close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

//    public void uploadImageAndFiles(MultipartFile image, MultipartFile[] files, ClassVO vo) {
//        if (!image.isEmpty()) {
//            try {
//                byte[] bytes = image.getBytes();
//
//                String imageName = image.getOriginalFilename();
//                vo.setImage(imageName);
//
//                Path path = Paths.get(vo.getUploadPath() + imageName);
//                Files.write(path, bytes);
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
//    }
    

    /* ClassController와 연동되는 ServiceImpl - 정연우(0224)*/
    public List<Map<String, Object>> getMyLec(String user_id) throws Exception {
        return classMapper.getMyLec(user_id);
    }

    public List<Map<String, Object>> getThisLec(String class_id) throws Exception {
        return classMapper.getThisLec(class_id);
    }

    public int checkCode(HashMap<String, Object> map) throws Exception {
        return classMapper.checkCode(map);
    }

	@Override
	public void updateFlag(HashMap<String, Object> map1) {
		// TODO Auto-generated method stub
		
	}

    @Override
    public List<ClassVO> getAllClass() throws Exception {
        return classMapper.getAllClass();
        
    }


}
