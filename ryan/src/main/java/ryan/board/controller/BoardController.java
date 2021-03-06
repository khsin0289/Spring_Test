package ryan.board.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import ryan.board.service.BoardService;
import ryan.board.vo.BoardVO;

@Controller
@RequestMapping("board")
public class BoardController {
	@Resource(name="BoardService")
	private BoardService boardService;
	
	// boardList 게시판 리스트
	@RequestMapping(value="/boardList.do")
	public ModelAndView boardListView(ModelAndView mav, HttpServletRequest request){
		int currentPage = 1;
		int limit = 10; //페이징 갯수 설정 1~10
		
		String keyword = null;
		String searchType = null;
		String sortSubject = request.getParameter("sortSubject");

		System.out.println("sortSubject : " + sortSubject);
		
		
		if(request.getParameter("page") != null)
			currentPage = Integer.parseInt(request.getParameter("page"));
		if(request.getParameter("keyword")!= null)
			keyword = request.getParameter("keyword");
		if(request.getParameter("searchType")!= null)
			searchType = request.getParameter("searchType");
		
		int listCount = 0;
		List<BoardVO> boardList = null;
		
		// 키워드 값이 없으면 전체 List 출력
		if(keyword == null || keyword.equals("")){
			listCount = boardService.getBoardListCount(sortSubject);
			boardList = boardService.getBoardList(currentPage, limit, sortSubject);
		
		// 전체 키워드로 선택
		}else if(keyword != null && searchType.equals("all")){
			listCount = boardService.getBoardListAllCount(keyword);
			boardList = boardService.selectBoardAllList(currentPage, limit, keyword);
		
		// 제목 키워드로 선택
		}else if(keyword != null && searchType.equals("subject")){
			listCount = boardService.getBoardSubjectListCount(keyword);
			boardList = boardService.selectBoardSubjectList(currentPage, limit, keyword);

		// 내용 키워드로 선택
		}else if(keyword != null && searchType.equals("contents")){
			listCount = boardService.getBoardContentsCount(keyword);
			boardList = boardService.selectBoardContentsList(currentPage, limit, keyword);
			
		}else{
			listCount = boardService.getBoardListCount(sortSubject);
			//ArrayList<Notice> list = new NoticeService().selectList();
			boardList = boardService.getBoardList(currentPage, limit, sortSubject);
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
		
		if(boardList.size() >= 0){
			mav.addObject("boardList", boardList);
			mav.addObject("boardListSize",boardList.size());
			mav.addObject("listCount", listCount);
			mav.addObject("currentPage", currentPage);
			mav.addObject("maxPage", maxPage);
			mav.addObject("startPage", startPage);
			mav.addObject("endPage", endPage);
			mav.addObject("keyword", keyword);
			mav.addObject("searchType", searchType);
		}
		mav.setViewName("board/boardList");
		return mav;
	}

	// boardWriteView 게시판 글쓰는 페이지 보기
	@RequestMapping(value="/boardWriteView.do")
	public String boardWriteView(){
		return "board/boardWriteView";
	}
	
	// boardWrite 게시판 글쓰기 DB 입력
	@RequestMapping(value="/boardWrite.do")
	public ModelAndView boardWrite(ModelAndView mav, BoardVO boardVO){
		boardService.boardWrite(boardVO);
		mav.setViewName("redirect:/board/boardList.do");
		return mav;
	}
	
	// boardDetailView 게시판 상세화면 페이지 이동
	@RequestMapping(value="/boardDetailView.do")
	public ModelAndView boardDetailView(ModelAndView mav, @RequestParam int seq){
		// 게시판 상세화면 페이지 연결
		BoardVO boardVO = boardService.boardDetailView(seq);
		mav.addObject("boardVO", boardVO);
		mav.setViewName("board/boardDetailView");
		return mav;
	}
	
	// boardDelete 게시물 삭제
	@RequestMapping(value="/boardDelete.do")
	public ModelAndView boardDelete(ModelAndView mav, HttpServletRequest request){
		String[] seq = request.getParameterValues("seq");
		String[] splitStr = seq[0].split(",");
		for(int i=0; i<splitStr.length; i++){
			boardService.boardDelete(Integer.parseInt(splitStr[i]));
			System.out.println("삭제한 게시물 번호 : " + Integer.parseInt(splitStr[i]));
		}
		mav.setViewName("redirect:boardList.do");
		return mav;
	}
	
	// boardUpdateView 게시물 수정페이지
	@RequestMapping(value="/boardUpdateView.do")
	public ModelAndView boardUpdateView(ModelAndView mav, @RequestParam int seq){
		BoardVO boardVO = boardService.boardUpdateView(seq);
		mav.addObject("boardVO", boardVO);
		mav.setViewName("/board/boardUpdateView");
		return mav;
	}
	
	// boardUpdate 게시물 수정 DB 입력
	@RequestMapping(value="boardUpdate.do")
	public ModelAndView boardUpdate(ModelAndView mav, BoardVO boardVO){
		boardService.boardUpdate(boardVO);
		mav.setViewName("redirect:boardList.do");
		return mav;
	}
	/*
	@RequestMapping("/excelDownload")
	public String excelTransform(@RequestParam Map<String, Object> paramMap, Map<String, Object> ModelMap, HttpServletResponse response) throws Exception{
	excelDownload?target=books&id=b2
	위와 같은 형식으로 파라미터가 온다고 가정 target에 따라서 가져올 리스트를 선택	 

	String target = paramMap.get("target").toString();
	 
	response.setHeader("Content-disposition", "attachment; filename=" + target + ".xlsx"); //target명을 파일명으로 작성
	 
	        //엑셀에 작성할 리스트를 가져온다.
	List<Object> excelList= boardService.getAllObjects(target, paramMap); 
	 
	//ExcelView(kr.co.myapp.util.ExcelView) 에 넘겨줄 값 셋팅
	ModelMap.put("excelList", excelList); 
	ModelMap.put("target", target);
	 
	        return "excelView"; //servlet-context.xml 에서 name이 excelView(kr.co.myapp.util.ExcelView)인것 호출
	
	}*/
	
}
