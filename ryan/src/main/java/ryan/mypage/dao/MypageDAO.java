package ryan.mypage.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ryan.mypage.vo.MypageVO;

@Repository("MypageDAO")
public class MypageDAO {
	@Autowired
	private SqlSession sqlSession;
	//	private static final String NAMESPACE = "mypageMapper."
	
	public int getMypageListCount() {
		return (Integer) sqlSession.selectOne("mypageMapper.getMypageListCount");
	}

	@SuppressWarnings("unchecked")
	public List<MypageVO> getMypageList(int currentPage, int limit) {
		//읽기 시작할 행 번호
		int startRow = (currentPage - 1) * limit + 1;
		//읽을 마지막 행 번호
		int endRow = startRow + limit - 1;
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);		
		return sqlSession.selectList("mypageMapper.getMypageList", map);
	}
}
