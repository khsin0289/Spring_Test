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
	private static final String NAMESPACE = "boardMapper.";
	
	public int getBoardListCount() {
		return (Integer) sqlSession.selectOne(NAMESPACE+"getBoardListCount");
	}


	public List<BoardVO> getBoardList(int currentPage, int limit) {
		//읽기 시작할 행 번호
		int startRow = (currentPage - 1) * limit + 1;
		//읽을 마지막 행 번호
		int endRow = startRow + limit - 1;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);		
		
		return sqlSession.selectList(NAMESPACE+"getBoardList", map);
	}
	
	// 게시물 작성DB 입력
	public int boardWirte(BoardVO boardVO) {
		return sqlSession.insert(NAMESPACE+"boardWrite", boardVO);
	}

	// 게시물 상세페이지 연결
	public BoardVO boardDetailView(int seq) {
		return (BoardVO) sqlSession.selectOne(NAMESPACE+"boardDetailView", seq);
	}
	
	// 게시물 삭제
	public int boardDelete(int seq) {
		return sqlSession.delete(NAMESPACE+"boardDelete", seq);
	}

	// 게시물 수정페이지 연결
	public BoardVO boardUpdateView(int seq) {
		return (BoardVO) sqlSession.selectOne(NAMESPACE+"boardUpdateView", seq);
	}
	
	// 게시물 수정DB 입력
	public int boardUpdate(BoardVO boardVO) {
		return sqlSession.update(NAMESPACE+"boardUpdate", boardVO);
	}

	public int getBoardListAllCount(String keyword) {
		return (Integer) sqlSession.selectOne(NAMESPACE+"getBoardListAllCount", keyword);
	}

}
