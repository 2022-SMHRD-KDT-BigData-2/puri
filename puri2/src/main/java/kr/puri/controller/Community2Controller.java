package kr.puri.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.puri.entity.Board;
import kr.puri.mapper.PuriMapper;

@Controller
public class Community2Controller {
	 @Autowired // DI(의존성 주입)
	   private PuriMapper puriMapper;
	 
	 @GetMapping("/Community2.do")
	 public String goMypage(int seq, Model model) {
		 Board vo=puriMapper.boardContent(seq);
		 model.addAttribute("vo", vo);
		 
		 return "Community2"; // ${seq}
	 }
	 
}
