
package com.icia.movie.service;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.AdMovieDAO;
import com.icia.movie.dao.MovieDAO;
import com.icia.movie.dao.ScheduleDAO;
import com.icia.movie.dto.AdMovieDTO;
import com.icia.movie.dto.MovieDTO;
import com.icia.movie.dto.PageDTO;
import com.icia.movie.dto.ScheduleDTO;

@Service
public class ScheduleService {

	private ModelAndView mav = new ModelAndView();

	@Autowired
	private ScheduleDAO scdao;

	@Autowired
	private MovieDAO movdao;

	@Autowired
	private AdMovieDAO admovdao;

	public ModelAndView scView(int scMovCode) {
		System.out.println("[2] service : " + scMovCode);

		ScheduleDTO schedule = scdao.scView(scMovCode);

		MovieDTO movie = movdao.movView(scMovCode);

		AdMovieDTO adMovie = admovdao.adMovView(scMovCode);

		List<AdMovieDTO> scList = admovdao.adMovList(new PageDTO(0, 1000));

		System.out.println("[4] service : " + schedule);

		mav.addObject("scView", schedule);

		mav.addObject("scList", scList);

		mav.addObject("movView", movie);

		mav.addObject("adMovView", adMovie);

		mav.setViewName("Sc_View");

		return mav;
	}

	double num = Math.random();
	int rndNum = (int) (num * 50);

}
