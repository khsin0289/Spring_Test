package dev.web.obelab.repository;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dev.web.obelab.bean.DoctorBean;

@Repository
public class DoctorRepository {
	
	@Autowired
	private SqlSession sqlSession;
	private static final String NAMESPACE = "doctorMapper." ;

	// 회원가입
	public int insertDoctor(DoctorBean doctorBean) {
		return sqlSession.insert(NAMESPACE+"insertDoctor", doctorBean);
	}

	// 이메일 중복체크
	public DoctorBean emailChk(HashMap<String, String> hmap) {
		return (DoctorBean)sqlSession.selectOne(NAMESPACE+"emailChk", hmap);
	}
	
	// 임시비밀번호 발송 + 변경
	public int sendPw(HashMap<String, String> hmap) {
		System.out.println("repository : " + hmap);
		return sqlSession.update(NAMESPACE+"sendPw", hmap);
	}

}
