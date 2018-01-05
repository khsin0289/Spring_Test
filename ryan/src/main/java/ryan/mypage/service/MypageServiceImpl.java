package ryan.mypage.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import ryan.mypage.dao.MypageDAO;
import ryan.mypage.vo.MypageVO;

@Service("MypageService")
public class MypageServiceImpl implements MypageService{
	@Resource(name="MypageDAO")
	private MypageDAO mypageDao;

	@Override
	public int getMypageListCount() {
		return mypageDao.getMypageListCount();
	}

	@Override
	public List<MypageVO> getMypageList(int currentPage, int limit) {
		return mypageDao.getMypageList(currentPage, limit);
	}
}
