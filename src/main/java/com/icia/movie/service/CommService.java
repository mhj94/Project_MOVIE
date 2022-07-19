package com.icia.movie.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.CommDAO;
import com.icia.movie.dto.CommDTO;

@Service
public class CommService {

	// ModelAndView 객체 생성
	private ModelAndView mav = new ModelAndView();

	@Autowired
	private CommDAO cdao;

	// 리뷰 목록 출력
	List<CommDTO> commentList = new ArrayList<CommDTO>();

	// 리뷰 목록 ajax
	public List<CommDTO> cList(int cMovCode) {

		commentList = cdao.cList(cMovCode);

		return commentList;
	}

	// 리뷰 등록 ajax
	public List<CommDTO> cWrite(CommDTO comm) {
		System.out.println("[2]리뷰 s : " + comm);
		int result = cdao.cWrite(comm);
		System.out.println("[4]리뷰 s : " + result);
		if (result > 0) {
			commentList = cdao.cList(comm.getcMovCode());
		} else {
			commentList = null;
		}

		return commentList;
	}

	// 리뷰 삭제 ajax
	public List<CommDTO> cDelete(CommDTO comm) {

		int result = cdao.cDelete(comm);

		if (result > 0) {
			commentList = cdao.cList(comm.getcMovCode());
		} else {
			commentList = null;
		}

		return commentList;
	}

	// 리뷰 수정 ajax
	public List<CommDTO> cModify(CommDTO comm) {

		int result = cdao.cModify(comm);

		if (result > 0) {
			commentList = cdao.cList(comm.getcMovCode());
		} else {
			commentList = null;
		}

		return commentList;
	}

	

}
