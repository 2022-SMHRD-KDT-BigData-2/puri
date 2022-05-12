package kr.puri.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.puri.entity.Answer;
import kr.puri.entity.Board;
import kr.puri.entity.Member;
import kr.puri.entity.Question;
import kr.puri.mapper.PuriMapper;

@Controller
public class answerInsertController {

	@Autowired
	   private PuriMapper puriMapper;
	
	@PostMapping("/answerInsert.do") 
	public String boardUpload(HttpSession session,Answer avo,int write_seq) {
		 
		//HttpSession session =request.getSession();
		Member vo = (Member)session.getAttribute("vo");
		String id = vo.getId();
		avo.setId(id);
		
		//avo = new Answer(write_seq,answer_content,id);
		puriMapper.answerInsert(avo);
		
		return "redirect:/Community2.do?seq="+write_seq;
	}
}
