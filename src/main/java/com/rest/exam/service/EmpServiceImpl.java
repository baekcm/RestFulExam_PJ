package com.rest.exam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

import com.rest.exam.dao.EmpDAO;
import com.rest.exam.dto.EmpDTO;

@Service
public class EmpServiceImpl implements EmpService {

	@Autowired
    private EmpDAO empDAO;
	
	public ArrayList<EmpDTO> getEmpList() {
        return (ArrayList<EmpDTO>)empDAO.getEmpList();
    }
	
	public void addEmp(EmpDTO empDto) {
		empDAO.addEmp(empDto);
	}
	
	public EmpDTO getEmpView(String empno) {
		return (EmpDTO)empDAO.getEmpView(empno);
	}
	
	public void modifyEmp(EmpDTO empDto) {
		empDAO.modifyEmp(empDto);
	}
	
	public void deleteEmp(String empno) {
		empDAO.deleteEmp(empno);
	}
	
}