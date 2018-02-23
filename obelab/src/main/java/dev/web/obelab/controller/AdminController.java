package dev.web.obelab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dev.web.obelab.bean.pathBean;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@RequestMapping
	public String admin() {
		System.out.println("adminIndex");
//		mav.addObject("msg", "관리자로 로그인 성공!");
		return "redirect:/admin/user";
	}
	
	@SuppressWarnings("finally")
	@RequestMapping("/{path1}")
	@ResponseBody
	public ModelAndView admin(@PathVariable String path1) {
		System.out.println("admin path : " + path1);
		ModelAndView mav = new ModelAndView();
		
		try {
			if (path1 != null) {
				if (path1.equals("home")) {
					mav.setViewName("redirect:/admin");
					
					
				} else if (path1.equals("user")) {
					mav.addObject("center", pathBean.getAdminPath() + "center/menuSection/user.jsp");
					mav.setViewName(pathBean.getAdminhome());
					
					
				} else if (path1.equals("device")) {
					
					/* DEVICE MODAL PAGES */
					mav.addObject("addDvcModal", pathBean.getModalPath() + "device/user/addDevice.jsp");
					
					/* DEVICE CENTER PAGE */
					mav.addObject("center", pathBean.getAdminPath() + "center/menuSection/device.jsp");
					
					mav.setViewName(pathBean.getAdminhome());
					
					
				} else if (path1.equals("data")) {

//					List<PatientBean> dataList = new ArrayList<>();
//					if (!dataList.isEmpty()) {
//						mav.addObject("dataList", dataList);
					
						/* DATA CENTER PAGES */
						mav.addObject("chart", pathBean.getAdminPath() + "center/menuSection/data/dataChart.jsp");
						mav.addObject("table", pathBean.getAdminPath() + "center/menuSection/data/dataTable.jsp");
						mav.addObject("center", pathBean.getAdminPath() + "center/menuSection/data.jsp");
//					} else {
						
						/* EXCEPTION PAGES */
//						mav.addObject("exceptionDetail", pathBean.getExceptionPath() + "showException.jsp");
//						mav.addObject("errorMsg", "환자 데이터가 존재하지 않습니다.");
//						mav.addObject("center", pathBean.getDoctorPath() + "center/menuSection/data.jsp");
//					}
						mav.setViewName(pathBean.getAdminhome());
				} else if (path1.equals("data-show")) {
					
					/* DATA SHOW MODAL PAGES */
					mav.addObject("compare" , pathBean.getModalPath() + "data/compare/compareSelect.jsp");
					mav.addObject("compareList" , pathBean.getModalPath() + "data/compare/compareSelectList.jsp");
					mav.addObject("compareResult" , pathBean.getModalPath() + "data/compare/compareResult.jsp");
					mav.addObject("report", pathBean.getModalPath() + "data/report/reportData.jsp");
					
					/* DATA SHOW CENTER PAGES */
					mav.addObject("info", pathBean.getAdminPath() + "center/menuSection/data/dataInfo.jsp");
					mav.addObject("graph", pathBean.getAdminPath() + "center/menuSection/data/dataGraph.jsp");
					mav.addObject("center", pathBean.getAdminPath() + "center/menuSection/data.jsp");
					mav.setViewName(pathBean.getAdminhome());
				} else if (path1.equals("subject")) {
					
//					List<PatientBean> dataList = new ArrayList<>();
//					if (!dataList.isEmpty()) {
//						mav.addObject("dataList", dataList);
						
						/* SUBJECT MODAL PAGES */
						mav.addObject("patientInfo", pathBean.getModalPath() + "subject/patient/patientInfoForm.jsp");
						mav.addObject("accessModal", pathBean.getModalPath() + "subject/access/accessTerms.jsp");
						
						/* SUBJECT CENTER PAGES */
						mav.addObject("chart", pathBean.getAdminPath() + "center/menuSection/subject/patientChart.jsp");
						mav.addObject("table", pathBean.getAdminPath() + "center/menuSection/subject/patientTable.jsp");
						
						mav.addObject("center", pathBean.getAdminPath() + "center/menuSection/subject.jsp");
//					} else {
//						mav.addObject("exceptionDetail", pathBean.getExceptionPath() + "showException.jsp");
//						mav.addObject("errorMsg", "환자 데이터가 존재하지 않습니다.");
//						mav.addObject("center", pathBean.getAdminPath() + "center/menuSection/data.jsp");
//					}
					
					mav.setViewName(pathBean.getAdminhome());
					
					
				} else if (path1.equals("push")) {
					mav.addObject("center", pathBean.getAdminPath() + "center/menuSection/push.jsp");
					mav.setViewName(pathBean.getAdminhome());
					
					
				} else if (path1.equals("logout")) {
					mav.addObject("msg", "로그아웃 성공");
					mav.addObject("center", pathBean.getAdminPath() + "center/logout.jsp");
					mav.setViewName(pathBean.getAdminhome());
				} else {
					mav.setViewName("redirect:/admin");
				}
			} else {
				mav.setViewName("redirect:/admin");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			mav.addObject("exceptionView", pathBean.getExceptionPath() + "showException.jsp");
			mav.addObject("errorMsg", e);
			mav.setViewName(pathBean.getAdminhome());
		} finally {
			return mav;
		}
	}
}
