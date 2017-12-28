package ryan.member.service;

import java.util.List;

import org.springframework.stereotype.Service;

import ryan.member.vo.MemberVO;

@Service
public interface MemberService {
	int getMemberListCount();
	List<MemberVO> getMemberList(int currentPage, int limit);
}