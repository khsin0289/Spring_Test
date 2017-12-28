package ryan.member.service;

import java.util.List;
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
}
