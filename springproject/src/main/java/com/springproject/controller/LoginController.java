package com.springproject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springproject.service.Dataservice;
import com.springproject.vo.UserVO;

@Controller
@RequestMapping("/")
public class LoginController {
	@Autowired
	Dataservice dataservice;
	@Autowired
	HttpSession session;

	@RequestMapping(value="goto/{servlet}")
	public String sayhello(@PathVariable String servlet) {
		return servlet;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public @ResponseBody String loginverify(@RequestParam String name, @RequestParam String password) {

		UserVO userVO = dataservice.loginpass( name, password);
		session.setAttribute("passid", userVO.getId());
		session.setAttribute("user", userVO.getUsername());
		session.setAttribute("email", userVO.getEmail());
		if(userVO.getId() == 0) {
			return "fail";
		}
		return "success";

	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logOut() {
		session.removeAttribute("passid");
		session.removeAttribute("user");
		session.removeAttribute("email");
		session.invalidate();
		
		return "index";

	}


}
