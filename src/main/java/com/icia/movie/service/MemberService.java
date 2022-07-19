package com.icia.movie.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.MemberDAO;
import com.icia.movie.dto.MemberDTO;

@Service
public class MemberService {

    ModelAndView mav = new ModelAndView();

    @Autowired
    private MemberDAO mdao;

    @Autowired
    private HttpSession session;

    @Autowired
    private BCryptPasswordEncoder pwEnc;

    // 회원가입 메소드
    public ModelAndView mJoin(MemberDTO member) throws IllegalStateException, IOException {

       
        // 2.주소 처리
        String addr1 = member.getAddr1();
        String addr2 = member.getAddr2();
        String addr3 = member.getAddr3();

        String mAddr = "(" + addr1 + ")" + addr2 + " " + addr3; // 우편번호 + 주소 + 공백 + 상세주소

        if (!addr1.equals("")) {
            member.setmAddr(mAddr);
        }

        // 비밀번호 암호화
        // 제일 안쪽 괄호부터 해석하면
        // 1. 입력받은 패스워드를 2. 암호화해서 3. MDTO(member)에 저장한다.
        member.setmPw(pwEnc.encode(member.getmPw()));

        // 가입 여부를 확인하는 result 변수 선언
        int result = mdao.mJoin(member);

        if (result > 0) {
            // 가입성공
            mav.setViewName("index");
        } else {
            // 가입실패
            mav.setViewName("redirect:/mJoin");
        }

        return mav;
    }

    // 아이디 중복체크
    public String checkId(String mId) {

        String id = mdao.checkId(mId);
        String msg = null;

        if (id == null) {
            msg = "OK";
        } else {
            msg = "NO";
        }

        return msg;
    }

    // 로그인 메소드
    public ModelAndView mLogin(MemberDTO member) {

        // 1. 입력한 id로 암호화 된 패스워드를 검색 그 패스워드를 ePw에 담는다.
        String ePw = mdao.mEpw(member.getmId());

        MemberDTO loginMember = new MemberDTO();
        // 2. 입력한 패스워드와 암호화 된 패스워드가 일치하는지 비교
        if (pwEnc.matches(member.getmPw(),ePw)) {
            // 패스워드가 일치할 경우 그 아이디의 정보를 가져와서 loginMember에 담겠다는 뜻.
            loginMember = mdao.mView(member.getmId());
            session.setAttribute("login", loginMember);
            mav.addObject("loginResult", true);
            mav.addObject("login", loginMember);
        } else {
            // TODO: 패스워드 틀려서 실패시 로직 처리...
            mav.addObject("loginResult", false);
            mav.setViewName("index");
            return mav;
        }

        if (loginMember.getRole().equalsIgnoreCase("ADMIN")) {
            mav.setViewName("adminPage");
        } else {
            mav.setViewName("index");
        }

        return mav;
    }


    // 상세보기 메소드
    public ModelAndView mView(String mId) {

        MemberDTO member = mdao.mView(mId);

        mav.addObject("memView", member);

        return mav;
    }
}