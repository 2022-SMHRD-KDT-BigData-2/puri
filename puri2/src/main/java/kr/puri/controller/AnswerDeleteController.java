package kr.puri.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.puri.entity.Answer;
import kr.puri.mapper.PuriMapper;

@Controller
public class AnswerDeleteController {

	@Autowired
	PuriMapper puriMapper;
	
	@PostMapping("/answerDelete.do")
	public String answerDelete(int answer_seq,int write_seq) {
		
		
		
		
		puriMapper.answerDelete(answer_seq);
		
		return "redirect:/Community2.do?seq="+write_seq;
	}
	
}
