package com.project.web.Service;

import java.sql.Timestamp;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.project.web.DAO.WebDAO;

public class WebResultService implements WebServiceImpl{

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		Timestamp regDate = new Timestamp(System.currentTimeMillis());
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String userGender = request.getParameter("userGender");
		String userAddr1 = request.getParameter("userAddr1");
		String userAddr2 = request.getParameter("userAddr2");
		String userPhone = request.getParameter("userPhone");
		String userEmail = request.getParameter("userEmail");
		
		if(userGender.equals("남자")){
			userGender = "M";
		}else{
			userGender = "F";
		}
		
		
		WebDAO dao = new WebDAO();
		dao.signUp(userId, userPwd, userName, userGender, userAddr1, userAddr2, userPhone, userEmail, regDate);
	}

}
