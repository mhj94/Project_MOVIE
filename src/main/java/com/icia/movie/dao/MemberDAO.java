package com.icia.movie.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sql;

	// 회원가입 메소드
	public int mJoin(MemberDTO member) {

		return sql.insert("Member.mJoin", member);
	}

	// 아이디 중복체크 메소드
	public String checkId(String mId) {

		return sql.selectOne("Member.checkId", mId);
	}

	// 로그인 메소드
	public MemberDTO mLogin(MemberDTO member) {

		return sql.selectOne("Member.mLogin", member);
	}

	// 비밀번호 암호화
	public String mEpw(String mId) {

		return sql.selectOne("Member.mEpw", mId);
	}

	// 상세보기 메소드
	public MemberDTO mView(String mId) {

		return sql.selectOne("Member.mView", mId);
	}

}