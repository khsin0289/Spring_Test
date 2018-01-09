package ryan.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	// memberEnrolleView 회원가입 페이지
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
	    String savePath = root + "/profileUploadFiles/";
		
		if(!uploadFile.isEmpty()){
			String ofileName = uploadFile.getOriginalFilename();
			
			long currentTime = System.currentTimeMillis();  
		    SimpleDateFormat simDf = new SimpleDateFormat("yyyyMMddHHmmss");
			String rfileName = simDf.format(new Date(currentTime)) +"."
					+ ofileName.substring(ofileName.lastIndexOf(".")+1);;
			uploadFile.transferTo(new File(savePath + rfileName));
						
			memberVO.setImage(rfileName);
		}		

		memberService.insertMember(memberVO);
		System.out.println("멤버VO값 : " + memberVO);
		mav.addObject(memberVO);
		
		mav.setViewName("member/memberEnrollView");
		return mav;
	}
	
	// login 로그인 페이지 연결
	@RequestMapping(value="/login.do")
	public ModelAndView login(ModelAndView mav){
		mav.setViewName("member/login");
		return mav;
	}
	
	// 로그인 체크 
	@RequestMapping(value="/loginCheck")
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
	

}
