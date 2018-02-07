package com.springproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproject.repository.Datarepo;
import com.springproject.vo.BookVO;
import com.springproject.vo.BusVO;
import com.springproject.vo.UserVO;

@Service("Dataservice")
public class Dataservices implements Dataservice {

	@Autowired
	Datarepo datarepo;

	/* (non-Javadoc)
	 * @see com.spring_example.service.Customerservice#findAll()
	 */
	
	@Override
	public List<BusVO> findAll(String source, String destination) {
		return datarepo.findAll(source, destination);

	}

	public List<Integer> fectchSeats(int id) {
		return datarepo.fectchSeats(id);	}


	@Override
	public String registerpass(String user, String name, String email, String phone, String password) {
		// TODO Auto-generated method stub
		return datarepo.registerpass(user,name,email,phone,password);
	}

	@Override
	public UserVO loginpass(String name, String password) {
		// TODO Auto-generated method stub
			UserVO passenger= datarepo.loginpass(name,password);
			if(name==passenger.getUsername() && password==passenger.getPassword())	{
				
				return passenger;
			}		
			else {
				return passenger;
			}
			
	}

	@Override
	public String bookSeat(BookVO[] bookVO) {
		// TODO Auto-generated method stub
		String act=datarepo.bookSeat(bookVO);
		return act;
	}

	
}