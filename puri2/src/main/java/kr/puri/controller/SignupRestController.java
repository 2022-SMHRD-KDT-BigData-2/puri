package kr.puri.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

	@ResponseBody //ajax 사용시
	@RequestMapping(value = "idCheck", method = RequestMethod.POST)
    public int idCheck(String id) throws Exception {           
        Member m = puriMapper.idCheck(id);    
        if(m!=null) {
        	return 1;
        }
        System.out.println(id);
        return 0;
    }
	
	
	@ResponseBody //ajax 사용시
	@RequestMapping(value = "nickCheck", method = RequestMethod.POST)
    public int nickCheck(String nick) throws Exception {           
        Member m = puriMapper.nickCheck(nick);    
        if(m!=null) {
        	return 1;
        }
        System.out.println(nick);
        return 0;
    }


}
