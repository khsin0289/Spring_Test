package ryan.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ryan.board.vo.BoardVO;

@Repository("BoardDAO")
public class BoardDAO {
	@Autowired
	private SqlSession sqlSession;
	//	private static final String NAMESPACE = "boardMapper."
	
	public int getBoardListCount() {
		return (Integer) sqlSession.selectOne("boardMapper.getBoardListCount");
	}

	@SuppressWarnings("unchecked")
	public List<BoardVO> getBoardList(int currentPage, int limit) {
		//읽기 시작할 행 번호
		int startRow = (currentPage - 1) * limit + 1;
		//읽을 마지막 행 번호
		int endRow = startRow + limit - 1;
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);		
		return sqlSession.selectList("boardMapper.getBoardList", map);
	}

	//게시물 등록하기
	public int boardWirte(BoardVO boardVO) {
		return sqlSession.insert("boardMapper.boardWrite", boardVO);
	}
	
	// 게시물 상세보기
	public BoardVO boardDetailView(int no) {
		return (BoardVO) sqlSession.selectOne("boardMapper.boardSelectOne", no);
	}

	//게시물 삭제
	public int boardDelete(int board_no) {
		return sqlSession.delete("boardMapper.boardDelete", board_no);
	}
}
