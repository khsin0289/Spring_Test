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
}
