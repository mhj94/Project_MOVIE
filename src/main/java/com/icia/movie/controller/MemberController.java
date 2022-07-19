package com.icia.movie.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.icia.movie.dto.MemberDTO;
import com.icia.movie.service.MemberService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class MemberController {

	private ModelAndView mav = new ModelAndView();

	@Autowired
	private MemberService msvc;

	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {

		return "index";
	}
	
	// 회원가입 페이지로 이동
	@RequestMapping(value = "/mJoinForm", method = RequestMethod.GET)
	public String mJoinForm() {

		return "Mem_Join";
	}

	@RequestMapping(value = "/mLogout", method = RequestMethod.GET)
	public String mLogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("login");
		return "index";
	}

	// 회원가입 메소드
	@RequestMapping(value = "/mJoin", method = RequestMethod.POST)
	public ModelAndView mJoin(@ModelAttribute MemberDTO member) throws IllegalStateException, IOException {

		mav = msvc.mJoin(member);

		return mav;
	}

	// checkId : 아이디 중복 체크
	@RequestMapping(value = "/checkId", method = RequestMethod.POST)
	public @ResponseBody String checkId(@RequestParam("mId") String mId) {

		String msg = msvc.checkId(mId);

		return msg;
	}

	// 로그인 페이지로 이동
	@RequestMapping(value = "/mLoginForm", method = RequestMethod.GET)
	public String mLoginForm() {

		return "Mem_Login";
	}

	// mLogin : 로그인 메소드
	@RequestMapping(value = "mLogin", method = RequestMethod.POST)
	public ModelAndView mLogin(@ModelAttribute MemberDTO member) {

		mav = msvc.mLogin(member);

		return mav;
	}
	
	// mView : 상세보기 메소드
	@RequestMapping(value = "/mView", method = RequestMethod.GET)
	public ModelAndView mView(@RequestParam String mId) {

		mav = msvc.mView(mId);

		return mav;
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index1() {

		return "index";
	}
}