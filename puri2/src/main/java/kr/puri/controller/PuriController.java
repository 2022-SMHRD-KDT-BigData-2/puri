package kr.puri.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.puri.entity.Member;
import kr.puri.mapper.PuriMapper;

@Controller
public class PuriController {
	@Autowired // DI(의존성 주입)
	private PuriMapper puriMapper;

	@RequestMapping("/boardList.do")
	public String boardList(Model model) {
		List<Member> list = puriMapper.memberList();

		// 객체 바인딩 → View
		model.addAttribute("list", list);
		return "boardList"; // ->/WEB_INF/views/boardList.jsp
	}

	

}
