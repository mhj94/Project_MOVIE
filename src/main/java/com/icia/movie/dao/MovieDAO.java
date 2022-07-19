package com.icia.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.MovieDTO;

@Repository
public class MovieDAO {

	@Autowired
	private SqlSessionTemplate sql;

	// 영화 목록
	public List<MovieDTO> movList() {
		return sql.selectList("Movie.movList");
	}

	// 영화 상세보기
	public MovieDTO movView(int movCode) {
		System.out.println("[3] DAO : " + movCode);
		return sql.selectOne("Movie.movView", movCode);
	}

	
}
