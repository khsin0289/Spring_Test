package ryan.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import ryan.member.vo.MemberVO;

@Service
public interface MemberService {
	int getMemberListCount();
	List<MemberVO> getMemberList(int currentPage, int limit);
	
	// 회원가입
	int insertMember(MemberVO memberVO);
	
	// 로그인
	MemberVO loginCheck(Map<String, String> requestMap);
	
	// 아이디 중복체크
	MemberVO idCheck(HashMap<String, String> hmap);
	
	// 아이디 찾기
	MemberVO idSearch(HashMap<String, String> hmap);
	
	// 비밀번호 찾기(임시 비밀번호로 update)
	int pwdSearch(HashMap<String, String> hmap);

}