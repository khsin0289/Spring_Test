package ryan.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.core.annotation.SynthesizedAnnotation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import ryan.member.service.MemberService;
import ryan.member.vo.MemberVO;

@Controller
@RequestMapping("member")
public class MemberController {
	@Resource(name="MemberService")
	private MemberService memberService;
	
	// memberEnrolleView 회원가입 페이지 연결
	@RequestMapping(value="/memberEnrollView.do")
	public ModelAndView enrollView(ModelAndView mav){
		mav.setViewName("member/memberEnrollView");
		return mav;
	}
	
	// memberEnrolleView 회원가입 완료 DB등록
	@RequestMapping(value="/memberEnroll.do")
	public ModelAndView memberEnroll(ModelAndView mav, MemberVO memberVO, HttpServletRequest request) throws IllegalStateException, IOException{
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest)request;
		MultipartFile uploadFile = multipartRequest.getFile("uploadImg");
		
	    String root = request.getSession().getServletContext().getRealPath("/resources/");
	    String savePath = root + "/images/";
	    System.out.println("경로-------------------------------------------------------");
		System.out.println("root : " + root);
		System.out.println("savePath : " + savePath);
		System.out.println("경로-------------------------------------------------------");
		
		if(!uploadFile.isEmpty()){
			String ofileName = uploadFile.getOriginalFilename();
			
			long currentTime = System.currentTimeMillis();  
		    SimpleDateFormat simDf = new SimpleDateFormat("yyyyMMddHHmmss");
			String rfileName = simDf.format(new Date(currentTime)) +"."+ ofileName.substring(ofileName.lastIndexOf(".")+1);;
			uploadFile.transferTo(new File(savePath + rfileName));
						
			memberVO.setImage(rfileName);
		}		

		memberService.insertMember(memberVO);
		mav.addObject(memberVO);
		
		mav.setViewName("member/login");
		return mav;
	}
	
	// login 로그인 페이지 연결
	@RequestMapping(value="/login.do")
	public ModelAndView login(ModelAndView mav){
		mav.setViewName("member/login");
		return mav;
	}
	
	// 로그인 
	@RequestMapping(value="/loginCheck.do")
	@ResponseBody
	public Map<String, String> loginCheck(HttpSession session, MemberVO memberVO, HttpServletRequest request, @RequestParam String id, @RequestParam String pwd){
		Map<String, String> requestMap = new HashMap<String, String>();
		requestMap.put("id", id);
		requestMap.put("pwd", pwd);
		MemberVO loginUser = memberService.loginCheck(requestMap);
		Map<String, String> result = new HashMap<String, String>();
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			if(id.equals("admin")){
				result.put("loginMsg", "admin");
			}else{
				result.put("loginMsg", "main");
			}
		}else{
			result.put("loginMsg", "fail");
		}
		return result;
	}
	
	// 로그아웃
	@RequestMapping(value="/logout.do")
	public ModelAndView logout(ModelAndView mav,HttpSession session, HttpServletRequest request, HttpServletResponse response ){
		session = request.getSession(false);
		if(session != null){
			session.invalidate();
		}
		mav.setViewName("member/login");
		return mav;
	}
	
	
	// 아이디 중복체크
	@RequestMapping(value="/idCheck.do")
	@ResponseBody
	public HashMap<String, MemberVO> idCheck(@RequestParam String id){
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("id", id);
		MemberVO memberVO = memberService.idCheck(hmap);
		HashMap<String, MemberVO> resultMap = new HashMap<String, MemberVO>();
		if(memberVO != null){
			resultMap.put("memberVO", memberVO);
		}
		return resultMap;
	}
	
	// 아이디 찾기 페이지 연결
	@RequestMapping(value="/idSearchView.do")
	public ModelAndView idSearchView(ModelAndView mav){
		mav.setViewName("member/idSearchView");
		return mav;
	}
	
	// 아이디 찾기
	@RequestMapping(value="/idSearch.do")
	@ResponseBody
	public HashMap<String, MemberVO> idSearch(@RequestParam String email1, @RequestParam String email2){
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("email1", email1);
		hmap.put("email2", email2);
		MemberVO memberVO = memberService.idSearch(hmap);
		
		HashMap<String, MemberVO> resultMap = new HashMap<String, MemberVO>();
		if(memberVO != null){
			resultMap.put("memberVO", memberVO);
		}
		return resultMap;
	}
	
	// 비밀번호 찾기 페이지 연결
	@RequestMapping(value="/pwdSearchView.do")
	public ModelAndView pwdSearchView(ModelAndView mav){
		mav.setViewName("member/pwdSearchView");
		return mav;
	}


	// emailAuth 이메일 인증
	@RequestMapping(value="/emailAuth.do")
	public static void main(@RequestParam String email1, @RequestParam String email2, @RequestParam String pwd) {
		
		// 보내는 쪽의 메일 설정부분(naver로 설정함)
		String host     = "smtp.naver.com";
		final String user   = "";	//보내는 사람 email주소 또는 아이디
		final String password  = "";
		
		// 받는사람의 메일주소
		String to     = "cscmania@naver.com";
		
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
			message.setSubject("[Subject] Java Mail Test");
			
			// 메일의 내용
			message.setText("비밀번호는" + pwd);
			
			// send the message
			Transport.send(message);
			System.out.println("message sent successfully...");
			
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	
	// 비밀번호 찾기 email 보내기 START ====================================
	/*@RequestMapping(value="/pwdSearch.do")
	public ModelAndView emailAuth(HttpServletResponse response, HttpServletRequest request) throws Exception{
		String email = request.getParameter("email");
		String authNum = "";
		
		authNum = RandomNum();
		System.out.println("authNum" + authNum);
		
		sendEmail(email.toString(), authNum);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/pwdSearchView");
		mav.addObject("email", email);
		mav.addObject("authNum", authNum);
		
		return mav;
	}
	
	// 이메일 인증번호 난수 발생
	private String RandomNum() {
		StringBuffer buffer = new StringBuffer();
		for(int i=0; i<6; i++){
			int n =(int) (Math.random() * 10);
					buffer.append(n);
		}
		return buffer.toString();
	}

	private void sendEmail(String email, String authNum) {
		String host = "smtp.gmail.com";	// smtp 서버
		String subject = "스프링 이메일인증 테스트 인증번호 전달";
		String fromName = "스프링 관리자";
		String from = "adorable.hk@gmail.com"; // 보내는 메일
		String to1 = email;
		String content = "인증번호 [ " + authNum + "]";
		
		try {
			Properties props = new Properties();
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", host);
			
			props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.port", "456");
			props.put("mail.smtp.user", from);
			props.put("mail.smtp.auth", "true");
			
			Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication  getPasswordAuthentication(){
					return new PasswordAuthentication("adorable.hk@gmail.com", "zoflrxj1!");
				}
			});
			
			Message msg = new MimeMessage(mailSession);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText( fromName, "UTF-8", "B"))); // 보내는사람 설정	
		
		}catch (MessagingException e){
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}*/
	// 비밀번호 찾기 email 보내기 END ====================================
	
}
