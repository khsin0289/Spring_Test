package ryan.board.service;

import java.util.List;

import org.springframework.stereotype.Service;

import ryan.board.vo.BoardVO;

@Service
public interface BoardService {
	// boardList 게시판 리스트
	int getBoardListCount();
	List<BoardVO> getBoardList(int currentPage, int limit);
	
	// boardWrite 글쓰기
	int boardWrite(BoardVO boardVO);
	
	// boardDetailView 게시물 상세보기 페이지 연결
	BoardVO boardDetailView(int seq);
	
	// boardDelete 게시물 삭제
	int boardDelete(int seq);
	
}
