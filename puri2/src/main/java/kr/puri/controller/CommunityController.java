package kr.puri.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.puri.entity.Board;
import kr.puri.entity.Member;
import kr.puri.mapper.PuriMapper;


@Controller
public class CommunityController {
    @Autowired // DI(의존성 주입)
      private PuriMapper puriMapper;
     
     @GetMapping("/goCommunity.do")
      public String goMypage(Model model) {
        List<Board> list = puriMapper.boardList();
        
        model.addAttribute("list", puriMapper.boardList());
        
        
        return "Community";
      }
   
}
