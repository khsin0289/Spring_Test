package ryan.board.service;

import java.util.List;

import org.springframework.stereotype.Service;

import ryan.board.vo.BoardVO;

@Service
public interface BoardService {
	// boardList 게시판 리스트
	int getBoardListCount(String sortSubject);
	List<BoardVO> getBoardList(int currentPage, int limit, String sortSubject);
	
	// boardList 전체검색 리스트 / 검색내용 페이징
	int getBoardListAllCount(String keyword);
	List<BoardVO> selectBoardAllList(int currentPage, int limit, String keyword);
	
	// boardList 제목검색 리스트 / 검색내용 페이징
	int getBoardSubjectListCount(String keyword);
	List<BoardVO> selectBoardSubjectList(int currentPage, int limit, String keyword);
	
	// boardList 내용검색 리스트 / 검색내용 페이징
	int getBoardContentsCount(String keyword);
	List<BoardVO> selectBoardContentsList(int currentPage, int limit, String keyword);
	
	// boardWrite 게시물 작성 DB입력
	int boardWrite(BoardVO boardVO);
	
	// boardDetailView 게시물 상세페이지 연결
	BoardVO boardDetailView(int seq);
	
	// boardDelete 게시물 삭제
	int boardDelete(int seq);
	
	// boardUpdateView 게시물 수정페이지
	BoardVO boardUpdateView(int seq);
	
	// boardUpdate 게시물 수정 DB입력
	int boardUpdate(BoardVO boardVO);
	

	
	
	
	
	
}
