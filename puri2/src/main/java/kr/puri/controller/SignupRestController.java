package kr.puri.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.puri.entity.Member;
import kr.puri.mapper.PuriMapper;


@Controller
public class SignupRestController {
	@Autowired
	private PuriMapper puriMapper;

	@PostMapping("/idCheck")
	@ResponseBody
	public void idCheck(String id) {
		System.out.println("ff");
		System.out.println(id);
	}
	
	

}
