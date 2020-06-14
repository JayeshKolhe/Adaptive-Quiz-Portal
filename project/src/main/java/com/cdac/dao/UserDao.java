package com.cdac.dao;

import java.util.List;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.cdac.model.Questions;
import com.cdac.model.User;
import com.cdac.rowmapper.QuestionsRowMapper;
import com.cdac.rowmapper.UserRowMapper;

@Component
public class UserDao {
	@Autowired
	private JdbcTemplate jdbctemplate;
	
	public boolean createuser(User user)
	{
		String sql="insert into userinfo(Username,Password,Email,Mobile) values(?,?,?,?)";
		try {
		jdbctemplate.update(sql,user.getUsername(),user.getPassword(),user.getEmail(),user.getPhone());
		return true;
		}
		catch(Exception e)
		{
			return false;
			
		}
		
	}
	
	public boolean validateuser(User user)
	{
		String sql="select * from userinfo where Username=? and Password=?";
		User dbuser=jdbctemplate.queryForObject(sql, new Object[] {user.getUsername(), user.getPassword()},new UserRowMapper());
		if(dbuser==null)
		{
			return false;
			
		}
		else
		{
			return true;
		}
	}
	
	public List<Questions> getquestions(int complexity)
	{
		String sql="select * from quest where Complexity=?";
		
		//Questions ques=jdbctemplate.queryForObject(sql, new Object[] {complexity}, new QuestionsRowMapper());
		List<Questions> list=jdbctemplate.query(sql, new QuestionsRowMapper(), complexity);
		return list;
	}
	
}
