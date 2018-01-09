package ryan.board.service;

import java.util.List;

import org.springframework.stereotype.Service;

import ryan.board.vo.BoardVO;

@Service
public interface BoardService {
	// boardList
	int getBoardListCount();
	List<BoardVO> getBoardList(int currentPage, int limit);
	
	// boardWrite
	int boardWrite(BoardVO boardVO);
	
}
