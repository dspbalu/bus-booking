package com.springproject.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springproject.vo.BookVO;
import com.springproject.vo.BusVO;
import com.springproject.vo.UserVO;

@Repository("datarepo")
public class Datarepository implements Datarepo {
	@Autowired
	private JdbcTemplate JdbcTemplate;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.springproject.repository.Datarepo#findAll()
	 */
	@Override
	public List<BusVO> findAll(String source, String destination) {
		/*
		 * List<Customer> customers = new ArrayList<>();
		 * 
		 * Customer cust=new Customer(); cust.setFirstname("dsp");
		 * cust.setLastname("balu");
		 * 
		 * customers.add(cust);
		 */
		List<BusVO> buses = JdbcTemplate
				.query("select * from bus where routeid in (select id from route where origin = '" + source
						+ "' and destination= '" + destination + "' )", new RowMapper<BusVO>() {

							@Override
							public BusVO mapRow(ResultSet rs, int arg1) throws SQLException {
								BusVO cust = new BusVO();
								cust.setBusID(rs.getInt("id"));
								cust.setDeparture(rs.getString("departuretime"));
								cust.setArrival(rs.getString("ARRIVALTIME"));
								cust.setFare(rs.getInt("fare"));
								cust.setType(rs.getString("ac"));
								return cust;

							}

						});

		return buses;
	}

	@Override
	public List<Integer> fectchSeats(int id) {
		List<Integer> seats = JdbcTemplate.query("select seat from reserve where busid =" + id,
				new RowMapper<Integer>() {

					@Override
					public Integer mapRow(ResultSet rs, int arg1) throws SQLException {

						return rs.getInt("seat");

					}

				});
		return seats;
	}

	@Override
	public String bookSeat(BookVO[] bookVO) {
		// TODO Auto-generated method stub
		int rows = 0;
		for (int i = 0; i < bookVO.length; i++) {
			int passid = bookVO[i].getPassId();
			String name=bookVO[i].getPassName();
			int seatno=bookVO[i].getSeatNo();
			int busid=bookVO[i].getBusId();
			int row = JdbcTemplate.update("insert into reserve(passengerid,busid,passname,dt,tstamp,seat) values("+passid+","+busid+",'"+name+"','2017-06-07','2017-06-07',"+seatno+")");
			rows = +row;
		}
		if (rows > 0) {
			return "successfuly booked";
		} else {
			return "failure";
		}
	}

	public String registerpass(String user, String name, String email, String phone, String password) {

		int buses = JdbcTemplate.update("insert into passenger(username,password,name,email,mobile) values('" + user
				+ "','" + password + "','" + name + "','" + email + "','" + phone + "')");
		if (buses > 0) {
			return "registered";
		} else {
			return "unsucessful";
		}
	}

	@Override
	public UserVO loginpass(String name, String password) {
		// TODO Auto-generated method stub
		UserVO passengers =(UserVO) JdbcTemplate.queryForObject(
				"select id,username,password,email from passenger where username='"+name+"' and password='"+password+"'",  new RowMapper<UserVO>() {

					@Override
					public UserVO mapRow(ResultSet rs, int arg1) throws SQLException {
						UserVO userVO = new UserVO();
						userVO.setId(rs.getInt("ID"));;
						userVO.setUsername(rs.getString("username"));
						userVO.setPassword(rs.getString("password"));
						userVO.setEmail(rs.getString("email"));
						return userVO;
					}

				});
		return passengers;
	}
}
