package com.rest.exam.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.rest.exam.dto.EmpDTO;

import org.springframework.stereotype.Repository;

@Repository("EmpDao")
public class EmpDAO {
	
	private SqlSession sqlSession;

    public void setSqlSession(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

	public EmpDAO() {
		
	}

	public ArrayList<EmpDTO> getEmpList() {
		return (ArrayList) sqlSession.selectList("emp.getEmpList");
	}
	
	public void addEmp(EmpDTO empDto) {
		sqlSession.insert("emp.addEmp", empDto);
	}
	
	public EmpDTO getEmpView(String empno) {
		return (EmpDTO) sqlSession.selectOne("emp.getEmpView", empno);
	}
	
	public void modifyEmp(EmpDTO empDto) {
		sqlSession.update("emp.modifyEmp", empDto);
	}
	
	public void deleteEmp(String empno) {
		sqlSession.delete("emp.deleteEmp", empno);
	}
	
}