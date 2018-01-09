package ryan.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import ryan.member.vo.MemberVO;

@Service
public interface MemberService {
	int getMemberListCount();
	List<MemberVO> getMemberList(int currentPage, int limit);
	
	// 회원가입
	int insertMember(MemberVO memberVO);
	
	// 로그인 체크
	MemberVO loginCheck(Map<String, String> requestMap);
}