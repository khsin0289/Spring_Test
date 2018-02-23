package dev.web.obelab.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dev.web.obelab.bean.DoctorBean;
import dev.web.obelab.bean.TestBean;
import dev.web.obelab.service.TestService;

@Controller
@RequestMapping("/test/")
public class TestController {
	
	@Autowired
	private TestService service;
	
	private String obelabPath = "/obelab/";
	private String testPath = "/test/";
	
	@RequestMapping
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("insertOne");
		return mav;
	}
	
	/*	INSERT DOCTOR TEST */
	@RequestMapping("/insertDoc")
	@ResponseBody
	public ModelAndView insertDoc(DoctorBean doctorBean) {
		System.out.println("doc_num : " + doctorBean.getDoc_num());
		System.out.println("doc_email : " + doctorBean.getDoc_email());
		System.out.println("doc_pw : " + doctorBean.getDoc_pw());
		System.out.println("doc_last_name : " + doctorBean.getDoc_last_name());
		System.out.println("doc_first_name : " + doctorBean.getDoc_first_name());
		System.out.println("doc_tel : " + doctorBean.getDoc_tel());
		System.out.println("doc_department : " + doctorBean.getDoc_department());
		System.out.println("doc_use_status : " + doctorBean.getDoc_use_status());
		System.out.println("doc_task : " + doctorBean.getDoc_task());
		System.out.println("doc_analysis : " + doctorBean.getDoc_analysis());
		System.out.println("doc_report : " + doctorBean.getDoc_report());
		System.out.println("doc_reg_date : " + doctorBean.getDoc_reg_date());
		System.out.println("doc_del_status : " + doctorBean.getDoc_del_status());
		
		ModelAndView mav = new ModelAndView();
		doctorBean.setDoc_task("101^102");
		int res = service.insertDoc(doctorBean);
		System.out.println(res);
//		mav.addObject("name", name);
//		mav.addObject("age", age);
		mav.setViewName("selectList");
		
		return mav;
	}
	
	
	@RequestMapping("/insertOne")
	@ResponseBody
	public ModelAndView insertOne(TestBean testBean) {
		System.out.println("seq : " + testBean.getTest_seq());
		System.out.println("name : " + testBean.getName());
		System.out.println("age : " + testBean.getAge());
		ModelAndView mav = new ModelAndView();
//		int res = service.insertOne(testBean);
//		System.out.println(res);
//		mav.addObject("name", name);
//		mav.addObject("age", age);
		mav.setViewName("selectList");
		
		return mav;
	}
	
	@RequestMapping("/selectList")
	public ModelAndView selectList() {
		System.out.println("selectList");
		ModelAndView mav = new ModelAndView();
		List<TestBean> testList = service.selectList();
//		if(!testList.isEmpty()) {
			mav.addObject("testList", testList);
//		} else {
//			mav.addObject("testList", "empty");
//		}
		mav.setViewName("selectList");
		return mav;
	}
	
	@RequestMapping(value = "/selectOne", method=RequestMethod.GET)
	public ModelAndView selectOne(@RequestParam("test_seq")Integer test_seq) {
		System.out.println("selectOne");
		ModelAndView mav = new ModelAndView();
		TestBean testBean = service.selectOne(test_seq);
		mav.addObject("testBean", testBean);
		mav.setViewName("selectOne");
		return mav;
	}
	
	@RequestMapping(value="/modifyOne", method=RequestMethod.GET)
	public ModelAndView modifyOne(@RequestParam("num")Integer test_seq) {
		System.out.println("modifyOne");
		ModelAndView mav = new ModelAndView();
		TestBean testBean = service.selectOne(test_seq);
		mav.addObject("testBean", testBean);
		mav.setViewName("modifyOne");
		return mav;
	}
	
	@RequestMapping(value="/modifyOne", method=RequestMethod.POST)
	public ModelAndView modifyOne(TestBean testBean) {
		System.out.println("bean num = " + testBean.getTest_seq());
		ModelAndView mav = new ModelAndView();
		int res = service.modifyOne(testBean);
		System.out.println(res);
		TestBean test = service.selectOne(testBean.getTest_seq());
		mav.addObject("testBean", test);
		mav.setViewName("selectOne");
		return mav;
	}
	
	@RequestMapping("deleteOne")
	public ModelAndView deleteOne(@RequestParam("num")Integer test_seq) {
		ModelAndView mav = new ModelAndView();
		String msg = null;
		System.out.println(test_seq);
		int res = service.deleteOne(test_seq);
		if(res > 0) {
			msg = "성공";
		} else {
			msg = "실패";
		}
		System.out.println(msg);
		mav.addObject("msg", msg);
		mav.setViewName("redirect:" + testPath + "selectList");
		return mav;
	}
	
	
}
