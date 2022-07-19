package com.icia.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.AdMovieDTO;
import com.icia.movie.dto.MovieDTO;
import com.icia.movie.dto.PageDTO;

@Repository
public class AdMovieDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public int movWrite(AdMovieDTO adMovie) {

		return sql.insert("Movie.movWrite", adMovie);
	}

	public List<AdMovieDTO> adMovList(PageDTO paging) {

		return sql.selectList("Movie.adMovList", paging);
	}

	public int movCount() {

		return sql.selectOne("Movie.movCount");
	}

	public AdMovieDTO adMovView(int adMovCode) {

		return sql.selectOne("Movie.adMovView", adMovCode);
	}

	public int adMovModify(AdMovieDTO adMovie) {

		return sql.update("Movie.adMovModify", adMovie);
	}

	public int adMovDelete(int adMovCode) {

		return sql.delete("Movie.adMovDelete", adMovCode);
	}

}