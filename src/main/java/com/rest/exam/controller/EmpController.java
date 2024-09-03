package com.rest.exam.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
//import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import com.rest.exam.dto.EmpDTO;
import com.rest.exam.service.EmpService;;

@Controller
@RequestMapping("/emp")
public class EmpController {
	
	final static Logger logger = LoggerFactory.getLogger(RestController.class);
	
	@Autowired
	private EmpService empService;

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String getEmpList(ModelMap model) {
		
		logger.debug("###get!!");
		
		ArrayList<EmpDTO> list = empService.getEmpList();
		model.addAttribute("resultList", list);
		return "/list";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addFormEmp(ModelMap model) {
		
		logger.debug("###GET!!");
		return "/add";
	}
	
	@RequestMapping(value="/", method=RequestMethod.POST)
	public String addEmp(@ModelAttribute EmpDTO empDto, ModelMap model) {
		
		logger.debug("###POST!!");
		
		empService.addEmp(empDto);
		return "redirect:/emp/";
	}
	
	@RequestMapping(value="/{empno}", method=RequestMethod.GET)
	public String getEmp(@PathVariable String empno, ModelMap model) {
		
		logger.debug("###get!!");
		logger.debug("empno = "+ empno);
		
		EmpDTO empDto = empService.getEmpView(empno);
		model.addAttribute("result", empDto);
		return "/view";
	}
	
	@RequestMapping(value="/{empno}", method=RequestMethod.PUT)
	public String modifyEmp(@ModelAttribute EmpDTO empDto, @PathVariable String empno, ModelMap model) {
		
		logger.debug("###PUT!!");
		logger.debug("empDto.getEmpno() = "+ empDto.getEmpno());
		logger.debug("empDto.getJob() = "+ empDto.getJob());
		logger.debug("empDto.getMgr() = "+ empDto.getMgr());
		logger.debug("empDto.getSal() = "+ empDto.getSal());
		
		empService.modifyEmp(empDto);
		return "redirect:/emp/";
	}
	
	@RequestMapping(value="/{empno}", method=RequestMethod.DELETE)
	public String deleteEmp(@PathVariable String empno, ModelMap model) {
		
		logger.debug("###DELETE!!");
		logger.debug("empno = "+ empno);
		
		empService.deleteEmp(empno);
		return "redirect:/emp/";
	}
	

}