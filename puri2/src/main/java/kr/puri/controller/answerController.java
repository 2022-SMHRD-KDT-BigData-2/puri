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
import kr.puri.entity.Q_Answer;
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
	   public String answer2(Q_Answer qvo,HttpServletRequest request) {
		  HttpSession session =request.getSession();
		  Member vo = (Member)session.getAttribute("vo");
		  String id = vo.getId();
		  int question_1 = Integer.parseInt(request.getParameter("question_1"));
		  session.setAttribute("question_1", question_1);
		  return "Suggestion2";
	   }
	  @PostMapping("/Suggestion3.do")
	   public String answer3(Q_Answer qvo,HttpServletRequest request) {
		  HttpSession session =request.getSession();
		  Member vo = (Member)session.getAttribute("vo");
		  String id = vo.getId();
		  int question_2 = Integer.parseInt(request.getParameter("question_2"));
		  session.setAttribute("question_2", question_2);
		  
		  return "Suggestion3";
	   }
	  @PostMapping("/Suggestion4.do")
	   public String answer4(Q_Answer qvo,HttpServletRequest request) {
		  HttpSession session =request.getSession();
		  Member vo = (Member)session.getAttribute("vo");
		  String id = vo.getId();
		  int question_3 = Integer.parseInt(request.getParameter("question_3"));
		  session.setAttribute("question_3", question_3);
		  return "Suggestion4";
	   }
	  @PostMapping("/Suggestion5.do")
	   public String answer5(Q_Answer qvo,HttpServletRequest request) {
		  HttpSession session =request.getSession();
		  Member vo = (Member)session.getAttribute("vo");
		  String id = vo.getId();
		  int question_4 = Integer.parseInt(request.getParameter("question_4"));
		  session.setAttribute("question_4", question_4);
		  return "Suggestion5";
	   }
	  @PostMapping("/Suggestion6.do")
	   public String answer6(Q_Answer qvo,HttpServletRequest request) {
		  HttpSession session =request.getSession();
		  Member vo = (Member)session.getAttribute("vo");
		  String id = vo.getId();
		  
		  int question_5 = Integer.parseInt(request.getParameter("question_5"));
		  session.setAttribute("question_5", question_5);
		  
		  return "Suggestion6";
	   }
	  @PostMapping("/Suggestion7.do")
	   public String answer7(Q_Answer qvo, HttpServletRequest request) {
		  HttpSession session =request.getSession();
		  Member vo = (Member)session.getAttribute("vo");
		  String id = vo.getId();
		  
		  int question_6 = Integer.parseInt(request.getParameter("question_6"));
		  session.setAttribute("question_6", question_6);
		  
		  return "Suggestion7";
	   }

	 
	  @RequestMapping("/Suggestion8.do")
	   public String answer8(Q_Answer qvo, HttpServletRequest request) {
		  HttpSession session =request.getSession();
		  Member vo = (Member)session.getAttribute("vo");
		  String id = vo.getId();
		  int question_7 = Integer.parseInt(request.getParameter("question_7"));
		  session.setAttribute("question_7", question_7);
		  
		  
		  int q1 = (int) session.getAttribute("question_1");
		  int q2 = (int) session.getAttribute("question_2");
		  int q3 = (int) session.getAttribute("question_3");
		  int q4 = (int) session.getAttribute("question_4");
		  int q5 = (int) session.getAttribute("question_5");
		  int q6 = (int) session.getAttribute("question_6");
		  int q7 = (int) session.getAttribute("question_7");
		  
		  qvo = new Q_Answer(q1, q2, q3, q4, q5, q6, q7, id);
		  
		  puriMapper.q_anwerInsert(qvo);
		  
		  return "main";
	   }

	  
}
