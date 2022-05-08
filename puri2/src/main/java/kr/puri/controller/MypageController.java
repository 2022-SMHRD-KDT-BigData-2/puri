package kr.puri.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.puri.entity.Member;
import kr.puri.entity.Tool;
import kr.puri.mapper.PuriMapper;

@Controller
public class MypageController {
	  @Autowired // DI(의존성 주입)
	   private PuriMapper puriMapper;
	  
	  @GetMapping("/goMypage.do")
	   public String goMypage(Member vo) {
	      return "Mypage";
	   }
//	  
//	  @GetMapping("/goMyplant.do.do")
//	   public String goTool(Model model) {
//		 List<Tool> list = puriMapper.toolList();
//	     
//	     model.addAttribute("list", puriMapper.toolList());
//	      return "Tool";
//	   } 
	   
}
