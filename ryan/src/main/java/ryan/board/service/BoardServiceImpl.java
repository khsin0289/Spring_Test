package ryan.board.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import ryan.board.dao.BoardDAO;
import ryan.board.vo.BoardVO;

@Service("BoardService")
public class BoardServiceImpl implements BoardService{
	
	@Resource(name="BoardDAO")
	private BoardDAO boardDao;

	// boardList 게시판 리스트 / 페이징
	@Override
	public int getBoardListCount(String sortSubject) {
		return boardDao.getBoardListCount(sortSubject);
	}
	@Override
	public List<BoardVO> getBoardList(int currentPage, int limit, String sortSubject) {
		return boardDao.getBoardList(currentPage, limit, sortSubject);
	}
	
	// boardList 전체검색 리스트 / 검색내용 페이징
	@Override
	public int getBoardListAllCount(String keyword) {
		return boardDao.getBoardListAllCount(keyword);
	}
	@Override
	public List<BoardVO> selectBoardAllList(int currentPage, int limit, String keyword) {
		return boardDao.selectBoardAllList(currentPage, limit, keyword);
	}
	
	// boardList 제목검색 리스트 / 검색내용 페이징
	@Override
	public int getBoardSubjectListCount(String keyword) {
		return boardDao.getBoardSubjectListCount(keyword);
	}
	@Override
	public List<BoardVO> selectBoardSubjectList(int currentPage, int limit, String keyword) {
		return boardDao.selectBoardSubjectList(currentPage, limit, keyword);
	}
	
	// boardList 내용검색 리스트 / 검색내용 페이징
	@Override
	public int getBoardContentsCount(String keyword) {
		return boardDao.getBoardContentsCount(keyword);
	}@Override
	public List<BoardVO> selectBoardContentsList(int currentPage, int limit, String keyword) {
		return boardDao.selectBoardContentsList(currentPage, limit, keyword);
	}

	
	// 게시판 글쓰기 DB입력
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
	
	// 게시물 수정페이지 연결
	@Override
	public BoardVO boardUpdateView(int seq) {
		return boardDao.boardUpdateView(seq);
	}
	
	// 게시물 수정하기 DB입력
	@Override
	public int boardUpdate(BoardVO boardVO) {
		return boardDao.boardUpdate(boardVO);
	}
	
	
	/*@Override
	public List<Object> getAllObjects(String target, Map<String, Object> searchMap) {
		//controller에서 넘어온 target에 따라서 dao 실행을 구분
        if(target.equals("books")){
            return boardDao.getBooks(searchMap);//검색조건 searchMap를 넘겨줌
        }
 
        if(target.equals("booksDetail")){
            return boardDao.getBooksDetail(searchMap);//검색조건 searchMap를 넘겨줌
        }
		return null;
	}*/
	
	

	
	
	
}
