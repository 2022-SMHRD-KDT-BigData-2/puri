package kr.puri.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import kr.puri.entity.Member;
import kr.puri.mapper.PuriMapper;


@Controller
public class Community {
	 @Autowired // DI(의존성 주입)
	   private PuriMapper puriMapper;
	  
	  @GetMapping("/goCommunity.do")
	   public String goMypage(Member vo) {
	      return "Community";
	   }
}
