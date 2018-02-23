package dev.web.obelab.controller;

import java.util.HashMap;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dev.web.obelab.bean.DoctorBean;
import dev.web.obelab.bean.pathBean;
import dev.web.obelab.service.DoctorService;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	private DoctorService doctorService;

	@RequestMapping
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		System.out.println("loginIndex");
		mav.addObject("msg", "/login!");
		
		mav.addObject("showPage", pathBean.getIndexPath() + "login.jsp");
		mav.setViewName("home");
		return mav;
	}
	
	/* MOVE LOCATION PATH HOME */
	@RequestMapping("/home")
	public String loginHome() {
		return "redirect:/login";
	}
	/* MOVE LOCATION PATH HOME END */
	
	/* SHOW REGISTER PAGE */
	@SuppressWarnings("finally")
	@RequestMapping("/register")
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView();
		System.out.println("register");
		try {
			mav.addObject("showPage", pathBean.getIndexPath() + "register.jsp");
			mav.setViewName("home");
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
	/* SHOW REGISTER PAGE END */
	
	/* SHOW ACCESS CHECK PAGE */
	@SuppressWarnings("finally")
	@RequestMapping("/check")
	public ModelAndView check() {
		ModelAndView mav = new ModelAndView();
		System.out.println("check");
		try {
			mav.addObject("showPage", pathBean.getIndexPath() + "checkAgree.jsp");
			mav.setViewName("home");
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
	/* SHOW ACCESS CHECK PAGE END */
	
	/* SHOW FIND PW PAGE */
	@SuppressWarnings("finally")
	@RequestMapping("/findpw")
	public ModelAndView findpw() {
		ModelAndView mav = new ModelAndView();
		try {
			mav.addObject("showPage", pathBean.getIndexPath() + "findpw.jsp");
			mav.setViewName("home");
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
	/* SHOW FIND PW PAGE END */
	
	/* ADMIN LOGIN */
	@RequestMapping("/admin")
	public String admin() {
		return "redirect:/admin";
	}
	/* ADMIN LOGIN END */
	
	/* USER(DOCTOR) LOGIN */
	@RequestMapping("/doctor")
	public String doctor() {
		return "redirect:/doctor";
	}
	/* USER(DOCTOR) LOGIN END */
	
	
	
	// 회원가입
	@RequestMapping("/insertDoctor")
	@ResponseBody
	public ModelAndView insertDoctor(DoctorBean doctorBean) {
		/*System.out.println("doc_num : " + doctorBean.getDoc_num());
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
		System.out.println("doc_del_status : " + doctorBean.getDoc_del_status());	*/
		ModelAndView mav = new ModelAndView();

		doctorBean.setDoc_task("101^102^201^202");
		int res = doctorService.insertDoctor(doctorBean);
		System.out.println("res : " + res);
			
		mav.addObject("msg", "회원가입 성공");
		
		mav.addObject("showPage", pathBean.getIndexPath() + "login.jsp");
		mav.setViewName("home");
		
		return mav;
		
	}
	
	// 아이디 중복체크 + 이메일 인증번호 전송 + 인증확인
	@RequestMapping(value="/emailChk")
	@ResponseBody
	public HashMap<String, DoctorBean> emailChk(@RequestParam String doc_email, @RequestParam String authNum){
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("doc_email", doc_email);
		System.out.println("hmap : " + hmap);
		DoctorBean doctorBean= doctorService.emailChk(hmap);
		HashMap<String, DoctorBean> resultMap = new HashMap<String, DoctorBean>();
		if(doctorBean != null){
			resultMap.put("doctorBean", doctorBean);
			/*resultMap.put("authNum", authNum);*/
			System.out.println("입력받은 hmap : " + hmap);
			System.out.println("메일주소부터 제대로 입력해라");
		}else{
			System.out.println("else hmap : " + hmap);
			System.out.println(authNum);
			System.out.println("인증메일 보내는 소스 구현해라dddddd");
			
			// 보내는 쪽의 메일 설정부분(naver로 설정함)
			String host     = "smtp.naver.com";
			final String user   = "";	//보내는 사람 email주소 또는 아이디
			final String password  = "";
			
			System.out.println(doc_email);
			// 받는사람의 메일주소
			String to     = doc_email;
			System.out.println("받는사람 이메일 : " + to);
			
			// Get the session object
			Properties props = new Properties();
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.auth", "true");
			
			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(user, password);
				}
			});
			
		  // Compose the message
			try {
				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress(user));
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				
				// 메일의 제목
				message.setSubject("[인증번호 발송메일 입니다.] Spring email 전송 Test");
				
				// 메일의 내용
				message.setText("회원가입 인증번호 : [ " + authNum + " ]");
				
				// send the message
				Transport.send(message);
				System.out.println("message sent successfully...");
				
			} catch (MessagingException e) {
				e.printStackTrace();
			}

		}
		return resultMap;
	}
	
	// 임시비밀번호 발송 + 변경
	@RequestMapping(value="/sendPw")
	@ResponseBody
	public ModelAndView sendPw(ModelAndView mav, @RequestParam String doc_email, @RequestParam String authNum){
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("doc_email", doc_email);
		hmap.put("authNum", authNum);
		int doctorBean = doctorService.sendPw(hmap);
		
		// 보내는 쪽의 메일 설정부분(naver로 설정함)
		String host     = "smtp.naver.com";
		final String user   = "";	//보내는 사람 email주소 또는 아이디
		final String password  = "";
		
		System.out.println(doc_email);
		// 받는사람의 메일주소
		String to     = doc_email;
		System.out.println("받는사람 이메일 : " + to);
		
		// Get the session object
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", "true");
		
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
		
	  // Compose the message
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			
			// 메일의 제목
			message.setSubject("[인증번호 발송메일 입니다.] Spring email 전송 Test");
			
			// 메일의 내용
			message.setText("회원가입 인증번호 : [ " + authNum + " ]");
			
			// send the message
			Transport.send(message);
			System.out.println("message sent successfully...");
			
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		mav.addObject("msg", "임시비밀번호 발급 성공");
		
		mav.addObject("showPage", pathBean.getIndexPath() + "login.jsp");
		mav.setViewName("home");
		return mav;
	}
}
