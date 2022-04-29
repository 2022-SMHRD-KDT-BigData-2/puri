package kr.puri.controller;

import org.apache.ibatis.jdbc.SQL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.puri.entity.Member;
import kr.puri.mapper.PuriMapper;

@Controller
@RequestMapping("/user")
public class SignupController {
	@Autowired // DI(의존성 주입)
	private PuriMapper puriMapper;
	
	@RequestMapping("/SignUp.do")
	public String Signup(Member vo) {
		puriMapper.SignUp(vo);
		return "main";
	}
	
	@GetMapping("/goSignUp.do")
	public String goSignUp() {
		return "Signup";
	}
	
	@GetMapping("/main.do")
	public String main() {
		return "main";
	}
	
	@PostMapping("/idCheck")
    @ResponseBody
    public int idCheck(@RequestParam("id") String id){
        int cnt = SignUp.idCheck(id);
        return cnt;
    }
	
	
}
