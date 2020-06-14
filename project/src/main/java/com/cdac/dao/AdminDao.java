 package com.cdac.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.cdac.model.Admin;
import com.cdac.model.Delete;
import com.cdac.model.Questions;
import com.cdac.model.User;
import com.cdac.rowmapper.QuestionsRowMapper;
import com.cdac.rowmapper.UserRowMapper;

@Component
public class AdminDao {

	
	@Autowired
	private JdbcTemplate jdbctemplate;
	
	public boolean insertquestion(Questions question)
	{
		String sql="insert into quest(Questions,Option1,Option2,Option3,Option4,Answers,Complexity) values(?,?,?,?,?,?,?)";
		jdbctemplate.update(sql,question.getQuestion(),question.getOption1(),question.getOption2(),question.getOption3(),question.getOption4(),question.getAnswer(),question.getComplexity());
		return true;
		
	}
	public boolean deletequestion(Delete check)
	{
		

			String sql="delete from quest where id=?";
			jdbctemplate.update(sql,check.getVal());

				
		return true;
	}
	
	
	public List<Questions> getquestions()
	{
		String sql="select * from quest";
		
		//Questions ques=jdbctemplate.queryForObject(sql, new Object[] {complexity}, new QuestionsRowMapper());
		List<Questions> list=jdbctemplate.query(sql, new QuestionsRowMapper());
		return list;
	}
	
	
	public boolean validateadmin(Admin admin)
	{
		String sql="select * from admininfo where username=? and password=?";
		User dbadmin=jdbctemplate.queryForObject(sql, new Object[] {admin.getUsername(), admin.getPassword()},new UserRowMapper());
		if(dbadmin==null)
		{
			return false;
			
		}
		else
		{
			return true;
		}
	}
}
