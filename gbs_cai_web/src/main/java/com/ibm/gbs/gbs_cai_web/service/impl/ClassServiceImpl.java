package com.ibm.gbs.gbs_cai_web.service.impl;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

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

    public List<Map<String, Object>> getDetailByCondition(int idx) throws Exception {
        return classMapper.getDetailByCondition(idx);
    }

    /*
	 * class Admin 관련 - 신혜정
     */
    public List<ClassVO> getClassList() throws Exception {
        //BasicConfigurator.configure();

//		logger.info("info log4j");
//		logger.debug("debuge log4j");
//		logger.error("error log4j");
        System.out.println();

        return classMapper.getClassList();
    }

    public ClassVO getClassDetail(int idx) throws Exception {
        return classMapper.getClassDetail(idx);
    }

    public void addClass(Model model) throws Exception {
        //BasicConfigurator.configure();

        Map<String, Object> map = model.asMap();
        HttpServletRequest request = (HttpServletRequest) map.get("request");

        String class_id = "C" + classMapper.getClassID();
        String title = request.getParameter("title");
        String teacher = request.getParameter("teacher");
        String booth = request.getParameter("booth");

        String start = request.getParameter("start");
        String end = request.getParameter("end");
        String date = request.getParameter("date");
        int capacity = Integer.parseInt(request.getParameter("capacity"));
        String detail = request.getParameter("detail");

        ClassVO vo = new ClassVO(class_id, title, teacher, booth, start, end, date, capacity, detail);

        System.out.println(request.getServletContext().getContextPath());
        String uploadPath = request.getServletContext().getRealPath("/WEB-INF/uploads/");
        //String uploadPath = "C://temp/";
        vo.setUploadPath(uploadPath);
        System.out.println(uploadPath);

        MultipartFile image = (MultipartFile) map.get("image");
        MultipartFile[] files = (MultipartFile[]) map.get("files");

        uploadImageAndFiles(image, files, vo);

        classMapper.addClass(vo);
    }

    public void modifyClass(Model model) throws Exception {
        Map<String, Object> map = model.asMap();
        HttpServletRequest request = (HttpServletRequest) map.get("request");

        int idx = Integer.parseInt(request.getParameter("idx"));
        String title = request.getParameter("title");
        String teacher = request.getParameter("teacher");
        String booth = request.getParameter("booth");

        String start = request.getParameter("start");
        String end = request.getParameter("end");
        String date = request.getParameter("date");
        int capacity = Integer.parseInt(request.getParameter("capacity"));
        String detail = request.getParameter("detail");

        ClassVO vo = new ClassVO(idx, title, teacher, booth, start, end, date, capacity, detail);

        vo.setImage(request.getParameter("imageName"));
        vo.setAtta1(request.getParameter("atta1"));
        vo.setAtta2(request.getParameter("atta2"));
        vo.setAtta3(request.getParameter("atta3"));

        MultipartFile image = (MultipartFile) map.get("image");
        MultipartFile[] files = (MultipartFile[]) map.get("files");

        uploadImageAndFiles(image, files, vo);

        classMapper.modifyClass(vo);
    }

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

    public void uploadImageAndFiles(MultipartFile image, MultipartFile[] files, ClassVO vo) {
        if (!image.isEmpty()) {
            try {
                byte[] bytes = image.getBytes();

                String imageName = image.getOriginalFilename();
                vo.setImage(imageName);

                Path path = Paths.get(vo.getUploadPath() + imageName);
                Files.write(path, bytes);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        if (!files[0].isEmpty()) {
            try {
                byte[] bytes = files[0].getBytes();

                String fileName = files[0].getOriginalFilename();
                vo.setAtta1(fileName);

                Path path = Paths.get(vo.getUploadPath() + fileName);
                Files.write(path, bytes);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        if (!files[1].isEmpty()) {
            try {
                byte[] bytes = files[1].getBytes();

                String fileName = files[1].getOriginalFilename();
                vo.setAtta2(fileName);

                Path path = Paths.get(vo.getUploadPath() + fileName);
                Files.write(path, bytes);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        if (!files[2].isEmpty()) {
            try {
                byte[] bytes = files[2].getBytes();

                String fileName = files[2].getOriginalFilename();
                vo.setAtta3(fileName);

                Path path = Paths.get(vo.getUploadPath() + fileName);
                Files.write(path, bytes);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* ClassController와 연동되는 ServiceImpl - 정연우(0224)*/
    public List<Map<String, Object>> getMyLec(String user_id) throws Exception {
        return classMapper.getMyLec(user_id);
    }

    public List<Map<String, Object>> getThisLec(String class_id) throws Exception {
        return classMapper.getThisLec(class_id);
    }

    public void updateFlag(HashMap<String, Object> map) throws Exception {
        classMapper.updateFlag(map);
    }

    public int checkCode(HashMap<String, Object> map) throws Exception {
        return classMapper.checkCode(map);
    }

}
