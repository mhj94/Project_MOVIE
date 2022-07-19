
package com.icia.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.ScheduleDTO;

@Repository
public class ScheduleDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public ScheduleDTO scView(int scMovCode) {
		System.out.println("[3] dao : " + scMovCode);
		return sql.selectOne("Schedule.scView", scMovCode);
	}

	

}