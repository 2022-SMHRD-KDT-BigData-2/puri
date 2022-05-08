package kr.puri.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.puri.entity.Tool;
import kr.puri.mapper.PuriMapper;

@Controller
public class ToolController {

	 @Autowired
	   private PuriMapper puriMapper;
	   
	 @GetMapping("/goTool.do")
	   public String goTool(Model model) {
		 List<Tool> list = puriMapper.toolList();
	     
	     model.addAttribute("list", puriMapper.toolList());
	      return "Tool";
	   } 
	 
	
}
