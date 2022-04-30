package kr.puri.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.puri.entity.Member;
import kr.puri.mapper.PuriMapper;

@RestController 
@Controller
public class SignupRestController {
	@Autowired
	private PuriMapper puriMapper;
	
	
	@PostMapping("/idcheck.do")
	public String idcheck( Member vo) {
		int res = puriMapper.idcheck(vo);	
		
		 if(res > 0) { // 중복 존재
		       return "flase";
		   }
		return "res";
	
	
	}
}
