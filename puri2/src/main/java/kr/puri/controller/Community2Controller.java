package kr.puri.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.puri.entity.Board;
import kr.puri.entity.Member;
import kr.puri.mapper.PuriMapper;

@Controller
public class Community2Controller {
    @Autowired // DI(의존성 주입)
      private PuriMapper puriMapper;
    
    @GetMapping("/Community2.do")
    public String goMypage(int seq, Model model,HttpServletRequest request) {
       Board bvo=puriMapper.boardContent(seq);
       model.addAttribute("bvo", bvo);
       
       HttpSession session =request.getSession();
       Member vo = (Member)session.getAttribute("vo");
       model.addAttribute("vo", vo);
       
   
       return "Community2"; // ${seq}
    }
    
}