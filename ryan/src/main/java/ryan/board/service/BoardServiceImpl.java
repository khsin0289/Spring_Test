package ryan.board.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import ryan.board.dao.BoardDAO;
import ryan.board.vo.BoardVO;

@Service("BoardService")
public class BoardServiceImpl implements BoardService{
	
	@Resource(name="BoardDAO")
	private BoardDAO boardDao;

	@Override
	public int getBoardListCount() {
		return boardDao.getBoardListCount();
	}

	@Override
	public List<BoardVO> getBoardList(int currentPage, int limit) {
		return boardDao.getBoardList(currentPage, limit);
	}
	
	// boardWrite 게시판 글쓰기
	@Override
	public int boardWrite(BoardVO BoardVO) {
		return boardDao.boardWirte(BoardVO);
	}

	// 게시판 상세페이지 연결
	@Override
	public BoardVO boardDetailView(int seq) {
		return boardDao.boardDetailView(seq);
	}
	
	// 게시물 삭제
	@Override
	public int boardDelete(int seq) {
		return boardDao.boardDelete(seq);
	}
	
	
}
