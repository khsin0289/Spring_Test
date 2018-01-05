package ryan.mypage.service;

import java.util.List;

import org.springframework.stereotype.Service;

import ryan.mypage.vo.MypageVO;

@Service
public interface MypageService {
	int getMypageListCount();	
	List<MypageVO> getMypageList(int currentPage, int limit);
	
		
}
