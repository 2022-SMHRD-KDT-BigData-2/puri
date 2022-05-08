package kr.puri.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.puri.entity.Member;
import kr.puri.entity.Plant;
import kr.puri.entity.Question;
import kr.puri.mapper.PuriMapper;

@Controller
public class SuggestionResultController {
	@Autowired 
	   private PuriMapper puriMapper;

	   @RequestMapping("/goSuggestionResult.do")
	   public String plantList(Model model, HttpSession session) {
		   Member member=(Member)session.getAttribute("vo");
		   List<Plant> list = puriMapper.plantList(member.getId());
		   model.addAttribute("list", list);
	      return "SuggestionResult";
	   }
	   
	   

	  
	    

	   
	   
	   
	   
}
