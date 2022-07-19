package com.icia.movie.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.AdMovieDAO;
import com.icia.movie.dto.AdMovieDTO;
import com.icia.movie.dto.MovieDTO;
import com.icia.movie.dto.PageDTO;

@Service
public class AdMovieService {

	private ModelAndView mav = new ModelAndView();

	@Autowired
	private AdMovieDAO movdao;

	@Autowired
	private HttpSession session;

	public ModelAndView movWrite(AdMovieDTO adMovie) throws IllegalStateException, IOException {

		// (1) 중복된 파일 이름 방지를 위한 UUID
		UUID uuid = UUID.randomUUID();

		// (2) 파일처리를 위한 업로드 파일 설정
		MultipartFile mFile = adMovie.getmFile();

		// (3) 업로드 한 파일 이름 설정
		String fileName1 = uuid.toString().substring(0, 8) + "_" + mFile.getOriginalFilename();

		// (4) 파일업로드 경로 설정
		String savePath1 = "D:/SpringWorkspace/ICIA_MOVIE/src/main/webapp/resources/"
				+ fileName1;

		// (5) 업로드 한 파일이 있을 경우 실행
		if (!mFile.isEmpty()) {
			mFile.transferTo(new File(savePath1)); // File의 java.io를 임포트 후 예외처리
			adMovie.setmFileName(fileName1);
		}

		int result = movdao.movWrite(adMovie);

		if (result > 0) {
			// 가입성공
			mav.setViewName("adminPage");
		} else {
			// 가입실패
			mav.setViewName("adminPage");
		}

		return mav;
	}

	public ModelAndView adMovList(int page, int limit) {

		// 한 화면에 보여줄 페이지 번호 갯수
		int block = 5;

		// 전체 회원수
		int mCount = movdao.movCount();

		int startRow = (page - 1) * limit + 1;
		int endRow = page * limit;

		int maxPage = (int) (Math.ceil((double) mCount / limit));
		int startPage = (((int) (Math.ceil((double) page / block))) - 1) * block + 1;
		int endPage = startPage + block - 1;

		// 오류 방지
		if (endPage > maxPage) {
			endPage = maxPage;
		}

		// 페이지 객체 생성
		PageDTO paging = new PageDTO(0, 1000);

		paging.setPage(page);

		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);

		paging.setLimit(limit);

		List<AdMovieDTO> mlist = movdao.adMovList(paging);

		mav.addObject("adMovList", mlist);
		mav.addObject("paging", paging);
		mav.setViewName("adMov_List");

		return mav;
	}

	public ModelAndView adMovView(int adMovCode) {

		AdMovieDTO adMovie = movdao.adMovView(adMovCode);

		mav.setViewName("adMov_View");
		mav.addObject("adMovView", adMovie);

		return mav;
	}

	public ModelAndView adMovModiForm(int adMovCode) {

		AdMovieDTO adMovie = movdao.adMovView(adMovCode);

		mav.addObject("modi", adMovie);
		mav.setViewName("adMov_ModiForm");
		return mav;
	}

	public ModelAndView adMovModify(AdMovieDTO adMovie) throws IllegalStateException, IOException {

		UUID uuid = UUID.randomUUID();

		MultipartFile mFile = adMovie.getmFile();

		String fileName1 = uuid.toString().substring(0, 8) + "_" + mFile.getOriginalFilename();

		String savePath1 = "D:/SpringWorkspace/ICIA_MOVIE/src/main/webapp/resources/" + fileName1;

		if (!mFile.isEmpty()) {
			mFile.transferTo(new File(savePath1));
			adMovie.setmFileName(fileName1);
		}

		int result = movdao.adMovModify(adMovie);

		if (result > 0) {
			mav.setViewName("redirect:/adMovView?movCode=" + adMovie.getAdMovCode());
		} else {
			mav.setViewName("redirect:/adMovList");
		}

		return mav;
	}

	public ModelAndView adMovDelete(int adMovCode) {

		int result = movdao.adMovDelete(adMovCode);

		if (result > 0) {
			mav.setViewName("redirect:/adMovList");
		} else {
			mav.setViewName("adMov_List");
		}

		return mav;
	}


}