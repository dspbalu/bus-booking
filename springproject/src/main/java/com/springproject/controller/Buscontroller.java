package com.springproject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.springproject.service.Dataservice;
import com.springproject.vo.BookVO;
import com.springproject.vo.BusVO;

@Controller
@RequestMapping("/bus")
public class Buscontroller {
	@Autowired
	Dataservice dataservice;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/details", method = RequestMethod.GET)
	public @ResponseBody String getBusDetails(@RequestParam String source, @RequestParam String destination) {

		List<BusVO> act = dataservice.findAll(source, destination);
		return new Gson().toJson(act);

	}

	@RequestMapping(value = "/fetchSeats/{busid}", method = RequestMethod.GET)
	public @ResponseBody String getBusSeats(@PathVariable int busid) {

		List<Integer> act = dataservice.fectchSeats(busid);
		return new Gson().toJson(act);

	}

	@RequestMapping(value = "/bookSeat", method = RequestMethod.POST)
	public @ResponseBody String bookSeat(@RequestBody BookVO[] bookVO) {
		//System.out.println(bookVO);
		String act = dataservice.bookSeat(bookVO);
		System.out.println(act);
		return act;

	}

	// @Pointcut("execution(* com.springproject.aop.*.*(..))")
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public @ResponseBody String register(@RequestParam String user, @RequestParam String name,
			@RequestParam String email, @RequestParam String phone, @RequestParam String password) {

		String act = dataservice.registerpass(user, name, email, phone, password);
		return act;

	}

	


}
