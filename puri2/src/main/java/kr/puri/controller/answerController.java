package kr.puri.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.puri.entity.Member;
import kr.puri.entity.Question;
import kr.puri.mapper.PuriMapper;

@Controller
public class answerController {

	@Autowired
	   private PuriMapper puriMapper;
	  
	@GetMapping("/Suggestion.do")
	   public String answer1(HttpServletRequest request) {
		  
		  return "Suggestion";
	   }
	  @PostMapping("/Suggestion2.do")
	   public String answer2(Question qvo,HttpServletRequest request) {
		  HttpSession session =request.getSession();
		  Member vo = (Member)session.getAttribute("vo");
		  String id = vo.getId();
		  int q_1 = Integer.parseInt(request.getParameter("q_1"));
		  session.setAttribute("q_1", q_1);
		  return "Suggestion2";
	   }
	  @PostMapping("/Suggestion3.do")
	   public String answer3(Question qvo,HttpServletRequest request) {
		  HttpSession session =request.getSession();
		  Member vo = (Member)session.getAttribute("vo");
		  String id = vo.getId();
		  int q_2 = Integer.parseInt(request.getParameter("q_2"));
		  session.setAttribute("q_2", q_2);
		  
		  return "Suggestion3";
	   }
	  @PostMapping("/Suggestion4.do")
	   public String answer4(Question qvo,HttpServletRequest request) {
		  HttpSession session =request.getSession();
		  Member vo = (Member)session.getAttribute("vo");
		  String id = vo.getId();
		  int q_3 = Integer.parseInt(request.getParameter("q_3"));
		  session.setAttribute("q_3", q_3);
		  return "Suggestion4";
	   }
	  @PostMapping("/Suggestion5.do")
	   public String answer5(Question qvo,HttpServletRequest request) {
		  HttpSession session =request.getSession();
		  Member vo = (Member)session.getAttribute("vo");
		  String id = vo.getId();
		  int q_4 = Integer.parseInt(request.getParameter("q_4"));
		  session.setAttribute("q_4", q_4);
		  return "Suggestion5";
	   }
	  @PostMapping("/Suggestion6.do")
	   public String answer6(Question qvo,HttpServletRequest request) {
		  HttpSession session =request.getSession();
		  Member vo = (Member)session.getAttribute("vo");
		  String id = vo.getId();
		  int q_5 = Integer.parseInt(request.getParameter("q_5"));
		  session.setAttribute("q_5", q_5);
		  
		  return "Suggestion6";
	   }
	  @PostMapping("/Suggestion7.do")
	   public String answer7(Question qvo, HttpServletRequest request) {
		  HttpSession session =request.getSession();
		  Member vo = (Member)session.getAttribute("vo");
		  String id = vo.getId();
		  int q_6 = Integer.parseInt(request.getParameter("q_6"));
		  session.setAttribute("q_6", q_6);
		  return "Suggestion7";
	   }

	 
	  @RequestMapping("/Suggestion8.do")
	   public String answer8(Question qvo, HttpServletRequest request) {
		  HttpSession session =request.getSession();
		  Member vo = (Member)session.getAttribute("vo");
		  String id = vo.getId();
		  int q_7 = Integer.parseInt(request.getParameter("q_7"));
		  session.setAttribute("q_7", q_7);
		  
		  
		  int q1 = (int) session.getAttribute("q_1");
		  int q2 = (int) session.getAttribute("q_2");
		  int q3 = (int) session.getAttribute("q_3");
		  int q4 = (int) session.getAttribute("q_4");
		  int q5 = (int) session.getAttribute("q_5");
		  int q6 = (int) session.getAttribute("q_6");
		  int q7 = (int) session.getAttribute("q_7");
		  
		  qvo = new Question(q1, q2, q3, q4, q5, q6, q7, id);
		  
		  puriMapper.q_Insert(qvo);
		  
		  return "SuggestionResult";
	   }

	  
}
