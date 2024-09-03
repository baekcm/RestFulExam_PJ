package com.rest.exam.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.rest.exam.dto.EmpDTO;

public interface EmpService {

	ArrayList<EmpDTO> getEmpList();
	
	void addEmp(EmpDTO empDto);
	
	EmpDTO getEmpView(String empno);
	
	void modifyEmp(EmpDTO empDto);
	
	void deleteEmp(String empno);
	
}