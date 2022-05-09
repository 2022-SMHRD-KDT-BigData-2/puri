package kr.puri.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.puri.entity.Member;
import kr.puri.entity.Myplant;
import kr.puri.entity.Plant;
import kr.puri.entity.Question;
import kr.puri.entity.Tool;
import kr.puri.mapper.PuriMapper;

@Controller
public class SuggestionResultController {
	@Autowired 
	   private PuriMapper puriMapper;

	   @RequestMapping("/goSuggestionResult.do")
	   public String plantList(Model model, HttpSession session) {
		   Member member=(Member)session.getAttribute("vo");
		   List<Plant> list = puriMapper.plantList(member.getId());
		   String p1=list.get(0).getPlant_name();
		   String p2=list.get(1).getPlant_name();
		   String p3=list.get(2).getPlant_name();
		   Myplant vo=new Myplant();
		   vo.setId(member.getId());
		   vo.setPlant_name1(p1);
		   vo.setPlant_name2(p2);
		   vo.setPlant_name3(p3);
		   puriMapper.myPlantInsert(vo);		   
		   model.addAttribute("list", list);
	      return "SuggestionResult";
	   }
	   
	   
	   @GetMapping("/goSoil.do")
		public String goSoil(Model model) {
			List<Tool> list1 = puriMapper.toolList1();

			model.addAttribute("list1", puriMapper.toolList1());
			return "SuggestionResult";
		}

		@GetMapping("/goVase.do")
		public String goVase(Model model) {
			List<Tool> list1 = puriMapper.toolList2();

			model.addAttribute("list1", puriMapper.toolList2());
			return "SuggestionResult";
		}

		@GetMapping("/goTool.do")
		public String goTool(Model model) {
			List<Tool> list1 = puriMapper.toolList3();

			model.addAttribute("list1", puriMapper.toolList3());
			return "SuggestionResult";
		}
	  
	    

	   
	   
	   
	   
}
