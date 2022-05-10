package kr.puri.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.puri.entity.Member;
import kr.puri.entity.Myplant;
import kr.puri.entity.Plant;

import kr.puri.mapper.PuriMapper;

@Controller
public class MypageController {
	@Autowired // DI(의존성 주입)
	private PuriMapper puriMapper;

	@GetMapping("/goMypage.do")
	public String goMypage(Model model, HttpSession session) {
		Member member=(Member)session.getAttribute("vo");
		
		List<Myplant> list = puriMapper.myplantList(member.getId());
		model.addAttribute("list",list);
		return "Mypage";
	}




}

