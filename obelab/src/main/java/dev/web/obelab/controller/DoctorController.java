package dev.web.obelab.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dev.web.obelab.bean.DoctorBean;
import dev.web.obelab.bean.PatientBean;
import dev.web.obelab.bean.pathBean;

@Controller
@RequestMapping("/doctor")
public class DoctorController {
	
	private String setViewName = pathBean.getDoctorhome();
	
	@RequestMapping
	public String doctor() {
		System.out.println("doctorIndex");
//		mav.addObject("msg", "의사 로그인 성공!");
		return "redirect:/doctor/data";
	}
	
	@SuppressWarnings("finally")
	@RequestMapping("/{path1}")
	@ResponseBody
	public ModelAndView doctor(@PathVariable String path1) {
		System.out.println("doctor path1 : " + path1); 
		ModelAndView mav = new ModelAndView();
		
		try {
			if(path1 != null) {
				if(path1.equals("home")) {
					mav.setViewName("redirect:/doctor");
				} else if (path1.equals("data")) {
					
//					List<PatientBean> dataList = new ArrayList<>();
//					if (!dataList.isEmpty()) {
//						mav.addObject("dataList", dataList);
					
						/* DATA CENTER PAGES */
						mav.addObject("chart", pathBean.getDoctorPath() + "center/menuSection/data/dataChart.jsp");
						mav.addObject("table", pathBean.getDoctorPath() + "center/menuSection/data/dataTable.jsp");
						mav.addObject("center", pathBean.getDoctorPath() + "center/menuSection/data.jsp");
//					} else {
						
						/* EXCEPTION PAGES */
//						mav.addObject("exceptionDetail", pathBean.getExceptionPath() + "showException.jsp");
//						mav.addObject("errorMsg", "환자 데이터가 존재하지 않습니다.");
//						mav.addObject("center", pathBean.getDoctorPath() + "center/menuSection/data.jsp");
//					}
				} else if (path1.equals("data-show")) {
					
					/* DATA SHOW MODAL PAGES */
					mav.addObject("compare" , pathBean.getModalPath() + "data/compare/compareSelect.jsp");
					mav.addObject("compareList" , pathBean.getModalPath() + "data/compare/compareSelectList.jsp");
					mav.addObject("compareResult" , pathBean.getModalPath() + "data/compare/compareResult.jsp");
					mav.addObject("report", pathBean.getModalPath() + "data/report/reportData.jsp");
					
					/* DATA SHOW CENTER PAGES */
					mav.addObject("info", pathBean.getDoctorPath() + "center/menuSection/data/dataInfo.jsp");
					mav.addObject("graph", pathBean.getDoctorPath() + "center/menuSection/data/dataGraph.jsp");
					mav.addObject("center", pathBean.getDoctorPath() + "center/menuSection/data.jsp");
					
				} else if (path1.equals("data-report")) {
					System.out.println("report");
					
				} else if (path1.equals("data-compare")) {
					System.out.println("compare");
					
					
				} else if (path1.equals("subject")) {
//					List<PatientBean> dataList = new ArrayList<>();
//					if (!dataList.isEmpty()) {
//						mav.addObject("dataList", dataList);
						
						/* SUBJECT MODAL PAGES */
						mav.addObject("patientInfo", pathBean.getModalPath() + "subject/patient/patientInfoForm.jsp");
						mav.addObject("accessModal", pathBean.getModalPath() + "subject/access/accessTerms.jsp");
						
						/* SUBJECT CENTER PAGES */
						mav.addObject("chart", pathBean.getDoctorPath() + "center/menuSection/subject/patientChart.jsp");
						mav.addObject("table", pathBean.getDoctorPath() + "center/menuSection/subject/patientTable.jsp");
						
						mav.addObject("center", pathBean.getDoctorPath() + "center/menuSection/subject.jsp");
//					} else {
//						mav.addObject("exceptionDetail", pathBean.getExceptionPath() + "showException.jsp");
//						mav.addObject("errorMsg", "환자 데이터가 존재하지 않습니다.");
//						mav.addObject("center", pathBean.getDoctorPath() + "center/menuSection/data.jsp");
//					}
					
				} else if (path1.equals("push")) {
					mav.addObject("center", pathBean.getDoctorPath() + "center/menuSection/push.jsp");
				} else if (path1.equals("myinfo")) {
					
					/* MY INFO MODAL PAGES */
					mav.addObject("autoLogOut", pathBean.getModalPath() + "myinfo/user/userAutoLogout.jsp");
					mav.addObject("editConfirm", pathBean.getModalPath() + "myinfo/user/userEditConfirm.jsp");
					mav.addObject("deleteConfirm", pathBean.getModalPath() + "myinfo/user/userDeleteConfirm.jsp");
					
					/* MY INFO CENTER PAGE */
					mav.addObject("center", pathBean.getDoctorPath() + "center/menuSection/myinfo.jsp");
					
				} else if (path1.equals("device")) {
					/* DEVICE MODAL PAGES */
					mav.addObject("addDevice", pathBean.getModalPath() + "device/user/addDevice.jsp");
					
					/* DEVICE CENTER PAGE */
					mav.addObject("center", pathBean.getDoctorPath() + "center/menuSection/device.jsp");
				} else if (path1.equals("logout")) {
//					mav.addObject("msg", "로그아웃 성공");
//					setViewName = "redirect:/login";
				} else if (path1.equals("signout")) {
//					mav.addObject("msg", "계정삭제 성공");
//					mav.addObject("center", pathBean.getDoctorPath() + "center/signout.jsp");
//					setViewName = "redirect:/login";
				} else {
					setViewName = "redirect:/doctor";
				}
				mav.setViewName(setViewName);
			} else {
				mav.setViewName("redirect:/doctor");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			mav.addObject("exceptionView", pathBean.getExceptionPath() + "showException.jsp");
			mav.addObject("errorMsg", e);
			mav.setViewName(setViewName);
		} finally {
			return mav;
		}
	}
}
