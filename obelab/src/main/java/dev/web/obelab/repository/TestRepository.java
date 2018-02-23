package dev.web.obelab.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dev.web.obelab.bean.DoctorBean;
import dev.web.obelab.bean.TestBean;

@Repository
public class TestRepository {
	
	@Autowired
	private SqlSession sqlSessionTemplate;
	
	public int insertOne(TestBean testBean) {
		return sqlSessionTemplate.insert("testMapper.insertOne", testBean);
	}

	public List<TestBean> selectList() {
		return sqlSessionTemplate.selectList("testMapper.selectList");
	}

	public TestBean selectOne(Integer test_seq) {
		return sqlSessionTemplate.selectOne("testMapper.selectOne", test_seq);
	}

	public int modifyOne(TestBean testBean) {
		return sqlSessionTemplate.update("testMapper.modifyOne", testBean);
	}

	public int deleteOne(Integer test_seq) {
		return sqlSessionTemplate.delete("testMapper.deleteOne", test_seq);
	}

	public int insertDoc(DoctorBean docBean) {
		return sqlSessionTemplate.insert("docMapper.insertDoc", docBean);
	}
}
