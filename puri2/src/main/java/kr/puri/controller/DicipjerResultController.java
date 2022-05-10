package kr.puri.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import kr.puri.mapper.PuriMapper;

@Controller
public class DicipjerResultController {
	
	@Autowired
	private PuriMapper puriMapper;
	
	@GetMapping("/goDecipherResult.do")
	public String goDecipher() {
		return "DecipherResult";
	}

}
