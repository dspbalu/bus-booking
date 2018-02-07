package com.springproject.service;

import java.util.List;

import com.springproject.vo.BookVO;
import com.springproject.vo.BusVO;
import com.springproject.vo.UserVO;


public interface Dataservice {

	List<BusVO> findAll(String source, String destination);

	List<Integer> fectchSeats(int id);

	String registerpass(String user, String name, String email, String phone, String password);

	UserVO loginpass(String name, String password);

	String bookSeat(BookVO[] bookVO);


}