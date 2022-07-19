package com.icia.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dto.AdMovieDTO;
import com.icia.movie.dto.MovieDTO;
import com.icia.movie.dao.AdMovieDAO;
import com.icia.movie.dao.MovieDAO;

@Service
public class MovieService {

	private ModelAndView mav = new ModelAndView();

	@Autowired
	private AdMovieDAO adMovdao;
	
	@Autowired
	private MovieDAO movdao;

	// 영화 목록
	public ModelAndView movList() {
		
		List<MovieDTO> movList = movdao.movList();

		mav.addObject("movList", movList);

		return mav;
	}

	// 영화 상세보기
	public ModelAndView movView(int adMovCode) {
		AdMovieDTO movie = adMovdao.adMovView(adMovCode);
		mav.addObject("adMovView", movie);
		mav.setViewName("Mov_View");
		return mav;
	}


	
	

}
