package dev.web.obelab.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import dev.web.obelab.bean.DoctorBean;
import dev.web.obelab.bean.TestBean;
import dev.web.obelab.repository.TestRepository;

@Service
public class TestService extends DefaultTransactionDefinition {
	
	@Autowired
	private TestRepository repository;
	
	@Autowired
	private PlatformTransactionManager tx;
	private TransactionStatus status;
	
	public int insertDoc(DoctorBean docBean) {
		
		status = tx.getTransaction(this);
		
		int res = repository.insertDoc(docBean);
		
		if(res > 0) {
			tx.commit(status);
		} else {
			tx.rollback(status);
		}
		return res;
	}
	
	public int insertOne(TestBean testBean) {
		
		status = tx.getTransaction(this);
		
		int res = repository.insertOne(testBean);
		
		if(res > 0) {
			tx.commit(status);
		} else {
			tx.rollback(status);
		}
		return res;
	}

	public List<TestBean> selectList() {
		return repository.selectList();
	}

	public TestBean selectOne(Integer test_seq) {
		return repository.selectOne(test_seq);
	}

	public int modifyOne(TestBean testBean) {
		status = tx.getTransaction(this);
		
		int res = repository.modifyOne(testBean);
		
		if(res > 0) {
			tx.commit(status);
		} else {
			tx.rollback(status);
		}
		return res;
	}

	public int deleteOne(Integer test_seq) {
		status = tx.getTransaction(this);
		
		int res = repository.deleteOne(test_seq);
		
		if(res > 0) {
			tx.commit(status);
		} else {
			tx.rollback(status);
		}
		return res;
	}
	
}
