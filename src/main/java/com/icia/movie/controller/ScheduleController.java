
package com.icia.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.service.ScheduleService;

@Controller
public class ScheduleController {

	private ModelAndView mav = new ModelAndView();

	@Autowired
	private ScheduleService scsvc;

	// scView : 상영시간표 상세보기
	@RequestMapping(value = "/scView", method = RequestMethod.GET)
	public ModelAndView scView(@RequestParam("scMovCode") int scMovCode) {
		System.out.println("[1] controller" + scMovCode);
		mav = scsvc.scView(scMovCode);
		System.out.println("[5] controller" + mav);
		return mav;
	}

	

}
