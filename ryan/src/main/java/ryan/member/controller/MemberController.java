package ryan.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	@RequestMapping(value="idSearchView.do")
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
	
	
	
	
}
