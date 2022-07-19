package com.icia.movie.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dto.AdMovieDTO;
import com.icia.movie.dto.MovieDTO;
import com.icia.movie.service.AdMovieService;

@Controller
public class AdMovieController {

	private ModelAndView mav = new ModelAndView();

	@Autowired
	private AdMovieService movsvc;

	// 영화 등록 페이지로 이동
	@RequestMapping(value = "/movWriteForm", method = RequestMethod.GET)
	public String movWriteForm() {

		return "Mov_Write";
	}

	// 영화 등록
	@RequestMapping(value = "/movWrite", method = RequestMethod.POST)
	public ModelAndView movWrite(@ModelAttribute AdMovieDTO adMovie) throws IllegalStateException, IOException {

		mav = movsvc.movWrite(adMovie);

		return mav;
	}

	// 영화 목록
	@RequestMapping(value = "/adMovList", method = RequestMethod.GET)
	public ModelAndView adMovList(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "5") int limit) {
		System.out.println("[1]jsp에서 controller로 가져온 page : " + page + ", limit : " + limit);
		mav = movsvc.adMovList(page, limit);

		return mav;
	}

	// 영화 상세보기
	@RequestMapping(value = "/adMovView", method = RequestMethod.GET)
	public ModelAndView adMovView(@RequestParam(value="adMovCode") int adMovCode) {

		mav = movsvc.adMovView(adMovCode);

		return mav;
	}

	// 영화 수정 페이지로 이동
	@RequestMapping(value = "/adMovModiForm", method = RequestMethod.GET)
	public ModelAndView adMovModiForm(@RequestParam(value = "adMovCode") int adMovCode) {

		mav = movsvc.adMovModiForm(adMovCode);

		return mav;
	}

	// 영화 수정
	@RequestMapping(value = "/adMovModify", method = RequestMethod.POST)
	public ModelAndView adMovModify(@ModelAttribute AdMovieDTO adMovie) throws IllegalStateException, IOException {

		mav = movsvc.adMovModify(adMovie);

		return mav;
	}

	// 영화 삭제
	@RequestMapping(value = "/adMovDelete", method = RequestMethod.GET)
	public ModelAndView adMovDelete(@RequestParam("adMovCode") int adMovCode) {

		mav = movsvc.adMovDelete(adMovCode);

		return mav;
	}

	
	
}