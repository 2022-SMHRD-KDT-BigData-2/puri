package kr.puri.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.puri.mapper.PuriMapper;

@Controller
public class CommunityDeleteController {
	
@Autowired
PuriMapper puriMapper;

@RequestMapping("/boardDelete.do/{write_seq}")
public String boardDelete(@PathVariable("write_seq")int write_seq) {
	puriMapper.boardDelete(write_seq);
	
	return "redirect:/goCommunity.do";
}
}
