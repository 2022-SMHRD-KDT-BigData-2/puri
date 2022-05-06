package kr.puri.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.jdbc.SQL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.puri.entity.Member;
import kr.puri.mapper.PuriMapper;

@Controller

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
   
  
   
   
}