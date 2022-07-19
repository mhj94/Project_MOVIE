package com.icia.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.service.MovieService;

@Controller
public class MovieController {

	private ModelAndView mav = new ModelAndView();

	@Autowired
	private MovieService movsvc;

	// 영화 목록
	@RequestMapping(value = "/movList", method = RequestMethod.GET)
	public ModelAndView movList() {
		System.out.println("[1]목록 controller");

		mav = movsvc.movList();

		System.out.println("[5]목록 controller : " + mav + "\n");

		return mav;
	}

	// movView : 영화 상세보기
	@RequestMapping(value = "/movView", method = RequestMethod.GET)
	public ModelAndView movView(@RequestParam("movCode") int movCode) {
		mav = movsvc.movView(movCode);
		return mav;
	}




}
