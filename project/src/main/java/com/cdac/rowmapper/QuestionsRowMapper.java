package com.cdac.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.cdac.model.Questions;

public class QuestionsRowMapper implements RowMapper<Questions>{

	@Override
	public Questions mapRow(ResultSet rs, int rowNum) throws SQLException {
		Questions questions=new Questions();
		
		questions.setId(rs.getInt("id"));
		questions.setQuestion(rs.getString("Questions"));
		questions.setOption1(rs.getString("Option1"));
		questions.setOption2(rs.getString("Option2"));
		questions.setOption3(rs.getString("Option3"));
		questions.setOption4(rs.getString("Option4"));
		
		questions.setAnswer(rs.getString("Answers"));
		questions.setComplexity(rs.getInt("Complexity"));
		return questions;
	}

}
