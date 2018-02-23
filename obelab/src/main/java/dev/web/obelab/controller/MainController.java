package dev.web.obelab.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dev.web.obelab.bean.pathBean;
import dev.web.obelab.module.pathModule;

@Controller
@RequestMapping("/")
public class MainController {
	
	@RequestMapping("/")
	public String obelab(HttpSession session) {
		// Session Test
//		session.setAttribute("login", "admin");
//		session.setAttribute("login", "doctor");
		return "forward:/home";
	}
	
	@SuppressWarnings("finally")
	@RequestMapping("/home")
	public ModelAndView home(HttpSession session) {
		
		Object getLoginSessionValue = session.getAttribute("login");
		System.out.println("session : " + getLoginSessionValue);
		// 로그인 정보 확인 ( admin / doctor / none )
		// security 완성 전까지 세션으로 작업 진행.
		
		ModelAndView mav = new ModelAndView();
//		mav.addObject("masterCss", new pathModule("css", "master"));
//		mav.addObject("msg", "this page is home!");
		
		try {
			if (getLoginSessionValue != null) {
				mav.setViewName("redirect:/login/"+getLoginSessionValue);
			} else {
				mav.setViewName("redirect:/login");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			mav.addObject("exceptionView", pathBean.getExceptionPath() + "showException.jsp");
			mav.addObject("errorMsg", e);
			mav.setViewName("home");
		} finally {
			return mav;
		}
	}
}
