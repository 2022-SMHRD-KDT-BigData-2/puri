package kr.puri.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.puri.mapper.PuriMapper;

@Controller
public class DicipherController {

	@Autowired
	private PuriMapper puriMapper;

	@GetMapping("/goDecipher.do")
	public String goDecipher() {
		return "Decipher";
	}

	@PostMapping("/upload.do") 
	public String upload(MultipartHttpServletRequest mul) { 
		//puriMapper.fileProcess(mul); 
		return ""; 
	}


}
