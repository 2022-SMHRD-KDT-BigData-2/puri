package kr.puri.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.puri.entity.Member;
import kr.puri.mapper.PuriMapper;

@Controller
public class loginController {

   @Autowired
   private PuriMapper puriMapper;
   
   @GetMapping("/loginout.do")
   public String loginout() {
      System.out.println("11");
      
      return "Login";
   } 
   
   @PostMapping("/login.do")
   public String login(Member mvo, HttpServletRequest request) {
      Member theVo=puriMapper.memberLogin(mvo);
      if(theVo != null) {
         // 로그인에 성공한 경우
         // 1. 세션객체를 생성한다.
         HttpSession session =request.getSession();
         // 2. 회원 인증을 했다는 사실을 객체바인딩
         session.setAttribute("mvo", theVo);   
      }
      else {
      return "redirect:/loginout.do";   
      }
      return "redirect:/main.do";
   }

   @PostMapping("/logout.do")

   public String logout(HttpServletRequest request) {
   HttpSession session =request.getSession();
   session.invalidate();
   return "redirect:/main.do";
}
}