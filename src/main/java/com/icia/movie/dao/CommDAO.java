package com.icia.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.CommDTO;

@Repository
public class CommDAO {

	@Autowired
	private SqlSessionTemplate sql;

	// 리뷰 목록
	public List<CommDTO> cList(int cMovCode) {
		return sql.selectList("Comment.cList", cMovCode);
	}

	// 리뷰 등록
	public int cWrite(CommDTO comm) {
		System.out.println("[3] 리뷰 d : " + comm);
		return sql.insert("Comment.cWrite", comm);
	}

	// 리뷰 삭제
	public int cDelete(CommDTO comm) {
		return sql.delete("Comment.cDelete", comm);
	}

	// 리뷰 수정
	public int cModify(CommDTO comm) {
		return sql.update("Comment.cModify", comm);
	}



}
