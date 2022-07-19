package com.icia.movie.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dto.CommDTO;
import com.icia.movie.service.CommService;

@Controller
@RequestMapping("/comment")
public class CommController {

	// ModelAndView 객체 생성
	private ModelAndView mav = new ModelAndView();

	@Autowired
	private CommService csvc;

	// 리뷰 목록 출력
	List<CommDTO> commentList = new ArrayList<CommDTO>();

	// cList : 리뷰 목록 ajax
	@RequestMapping(value = "/cList", method = RequestMethod.POST)
	public @ResponseBody List<CommDTO> cList(@RequestParam(value = "cMovCode", required = true) int cMovCode) {

		commentList = csvc.cList(cMovCode);

		return commentList;
	}

	// cWrite : 리뷰 등록
	@RequestMapping(value="/cWrite", method=RequestMethod.POST)
	public @ResponseBody List<CommDTO> cWrite(@ModelAttribute CommDTO comm){
		
		commentList = csvc.cWrite(comm);
		
		return commentList;
	}


	// cDelete : 리뷰 삭제
	@RequestMapping(value = "/cDelete", method = RequestMethod.POST)
	public @ResponseBody List<CommDTO> cDelete(@ModelAttribute CommDTO comm) {

		commentList = csvc.cDelete(comm);

		return commentList;
	}

	// cModify : 리뷰 수정 
	@RequestMapping(value = "/cModify", method = RequestMethod.POST)
	public @ResponseBody List<CommDTO> cModify(@ModelAttribute CommDTO comm) {

		commentList = csvc.cModify(comm);

		return commentList;
	}
	
}
