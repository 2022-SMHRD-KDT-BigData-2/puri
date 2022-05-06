package kr.puri.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.puri.entity.Member;
import kr.puri.entity.Plant;
import kr.puri.mapper.PuriMapper;

public class SuggestionResultController {
	@Autowired // DI(의존성 주입)
	   private PuriMapper puriMapper;

	   @RequestMapping("/goSuggestionResult.do")
	   public String plantList(Model model) {
	      List<Plant> list = puriMapper.plantList();

	      // 객체 바인딩 → View
	      model.addAttribute("list", list);
	      return "SuggestionResult"; // ->/WEB_INF/views/boardList.jsp
	   }
}