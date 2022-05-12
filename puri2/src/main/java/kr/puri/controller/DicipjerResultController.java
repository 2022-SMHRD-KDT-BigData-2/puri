package kr.puri.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.puri.entity.Disease_Info;
import kr.puri.mapper.PuriMapper;

@Controller
public class DicipjerResultController {

   @Autowired
   private PuriMapper puriMapper;

   @GetMapping("/dicipherResult.do")
   public String dicipherResult(String rs, Model model) {
      System.out.println("hi");
      Disease_Info info = puriMapper.dicipherResult(rs);
      model.addAttribute("info", info);
      return "DecipherResult";
   }

}