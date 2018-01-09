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

	//boardList
	@Override
	public int getBoardListCount() {
		return boardDao.getBoardListCount();
	}
	//boardList 페이징
	@Override
	public List<BoardVO> getBoardList(int currentPage, int limit) {
		return boardDao.getBoardList(currentPage, limit);
	}
	//boardWrite
	@Override
	public int boardWrite(BoardVO BoardVO) {
		return boardDao.boardWirte(BoardVO);
	}
	//biardDetailView 페이지
	@Override
	public BoardVO boardDetailView(int no) {
		return boardDao.boardDetailView(no);
	}
	
	//boardListDelete
	@Override
	public int boardDelete(int board_no) {
		return boardDao.boardDelete(board_no);
	}
}
