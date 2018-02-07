package com.springproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springproject.service.Dataservice;

@Controller
@RequestMapping("/busregister")
public class RegisterController {
	@Autowired
	Dataservice dataservice;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public @ResponseBody String register(@RequestParam String user, @RequestParam String name,
			@RequestParam String email, @RequestParam String phone, @RequestParam String password) {

		String act = dataservice.registerpass(user, name, email, phone, password);
		return act;

	}

}
