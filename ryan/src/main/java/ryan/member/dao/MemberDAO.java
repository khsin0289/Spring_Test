package ryan.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ryan.member.vo.MemberVO;

@Repository("MemberDAO")
public class MemberDAO {
	@Autowired
	private SqlSession sqlSession;
	private static final String NAMESPACE = "memberMapper.";
	
	public int getMemberListCount() {	
		return (Integer) sqlSession.selectOne(NAMESPACE+"getMemberListCount");
	}
	
	@SuppressWarnings("unchecked")
	public List<MemberVO> getMemberList(int currentPage, int limit) {
		//읽기 시작할 행 번호
		int startRow = (currentPage - 1) * limit + 1;
		//읽을 마지막 행 번호
		int endRow = startRow + limit - 1;
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);		
		return sqlSession.selectList(NAMESPACE+"getMemberList", map);
	}
	
	// 회원가입
	public int insertMember(MemberVO memberVO) {
		return sqlSession.insert(NAMESPACE+"insertMember", memberVO);
	}
	
	// 로그인 체크
	public MemberVO loginCheck(Map<String, String> requestMap) {
		return (MemberVO) sqlSession.selectOne(NAMESPACE+"loginCheck", requestMap);
	}
	
	// 아이디 중복체크
	public MemberVO idCheck(HashMap<String, String> hmap) {
		return (MemberVO) sqlSession.selectOne(NAMESPACE+"idCheck", hmap);
	}

	// 아이디 찾기
	public MemberVO idSearch(HashMap<String, String> hmap) {
		return (MemberVO) sqlSession.selectOne(NAMESPACE+"idSearch", hmap);
	}
	
	// 비밀번호 찾기 (임시비밀번호 발송 후 임시 비밀번호로db 업데이트)
	public int pwdSearch(HashMap<String, String> hmap) {
		return sqlSession.update(NAMESPACE+"pwdSearch", hmap);
	}


}
