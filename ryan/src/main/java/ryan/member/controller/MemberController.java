package ryan.member.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import ryan.member.service.MemberService;
import ryan.member.vo.MemberVO;

@Controller
@RequestMapping("member")
public class MemberController {
	@Resource(name="MemberService")
	private MemberService memberService;
	
	@RequestMapping(value="/memberList.do")
	public ModelAndView memberListView(ModelAndView mav, HttpServletRequest request){
		
		int limit = 10;
		int currentPage = 1;
		String keyword = null;
		String searchType = null;
		
		if(request.getParameter("page") != null)
			currentPage = Integer.parseInt(request.getParameter("page"));
		if(request.getParameter("keyword")!= null)
			keyword = request.getParameter("keyword");
		if(request.getParameter("searchType")!= null)
			searchType = request.getParameter("searchType");
		
		int listCount = 0;
		List<MemberVO> memberList = null;
		
		if(keyword == null || keyword.equals("")){
			listCount = memberService.getMemberListCount();
			memberList = memberService.getMemberList(currentPage, limit);
		}
		
		// 총 페이지 수 계산 : 목록이 최소 1개일 때  1페이지로 처리하기
		//0.9 를 더함
		int maxPage = (int)((double)listCount / limit + 0.9 );
		//현재 페이지에 보여질 시작페이지 값 (1, 11, 21, 31, ....)
		int startPage = (((int)((double)currentPage / limit + 0.9))-1)*limit + 1;
		//현재 페이지에 보여질 마직막 페이지 값(10, 20, 30, ...)
		int endPage = startPage + limit -1;
		if(maxPage < endPage){
			endPage = maxPage;
		}
		
		if(memberList.size() >= 0){
			mav.addObject("memberList", memberList);
			mav.addObject("memberSize",memberList.size());
			mav.addObject("listCount", listCount);
			mav.addObject("currentPage", currentPage);
			mav.addObject("maxPage", maxPage);
			mav.addObject("startPage", startPage);
			mav.addObject("endPage", endPage);
			mav.addObject("keyword", keyword);
			mav.addObject("searchType", searchType);
		}
		
		mav.setViewName("member/memberList");
		return mav;
	}
}
