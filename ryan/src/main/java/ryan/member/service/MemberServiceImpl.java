package ryan.member.service;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import ryan.member.dao.MemberDAO;
import ryan.member.vo.MemberVO;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {
	@Resource(name="MemberDAO")
	private MemberDAO memberDao;

	@Override
	public int getMemberListCount() {
		return memberDao.getMemberListCount();
	}

	@Override
	public List<MemberVO> getMemberList(int currentPage, int limit) {
		return memberDao.getMemberList(currentPage, limit);
	}

	// 회원가입
	@Override
	public int insertMember(MemberVO memberVO) {
		int result = memberDao.insertMember(memberVO);
		return result;
	}

	@Override
	public MemberVO loginCheck(Map<String, String> requestMap) {
		return memberDao.loginCheck(requestMap);
	}
}
