package dev.web.obelab.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import dev.web.obelab.bean.DoctorBean;
import dev.web.obelab.repository.DoctorRepository;

@Service
public class DoctorService extends DefaultTransactionDefinition {
	
	@Autowired
	private DoctorRepository doctorRepository;
	
	@Autowired
	private PlatformTransactionManager tx;
	private TransactionStatus status;
	
	// 회원가입
	public int insertDoctor(DoctorBean doctorBean) {	
		status = tx.getTransaction(this);
		int res = doctorRepository.insertDoctor(doctorBean);
		if(res > 0) {
			tx.commit(status);
		} else {
			tx.rollback(status);
		}
		return res;
	}

	// 이메일 중복체크
	public DoctorBean emailChk(HashMap<String, String> hmap) {
		return doctorRepository.emailChk(hmap);
	}

	// 임시비밀번호 발송 + 변경
	public int sendPw(HashMap<String, String> hmap) {
		System.out.println("service : " + hmap);
		return doctorRepository.sendPw(hmap);
	}

}
