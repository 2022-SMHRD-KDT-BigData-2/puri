package kr.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import kr.board.entity.Board;
import kr.board.mapper.BoardMapper;

@RestController
public class BoardRestController {
	
	@Autowired
	   private BoardMapper BoardMapper;
	
	@GetMapping("/board")
	   public List<Board>boardAjaxList() {
		// DB에서 게시판 전체리스트를 가져옴
	    List<Board> list = BoardMapper.boardList();
	    // JSON 형식으로 변환함 → API(Gson)
	    // JSON 데이터를 응답
	    return list; // JSON 변환
	 }
	
	@PostMapping("/board")
	public void boardAjaxInsert(Board vo) {
		BoardMapper.boardInsert(vo);
	}
	
	@DeleteMapping("/board/{idx}")
	public void boardAjaxDelete(@PathVariable int idx) {
		BoardMapper.boardDelete(idx);
	}
	
	@PutMapping("/board")
	public void boardAjaxUpdate(@RequestBody Board vo) {
		BoardMapper.boardContentUpdate(vo);
	}
	
	@PostMapping("/boardUpdate")
	public void boardUpdate1(Board vo) {
		BoardMapper.boardUpdate1(vo);
	}
	
	@GetMapping("/updateCount/{idx}")
	public Board updateCount(@PathVariable int idx) {
	   BoardMapper.updateCount(idx);
	   Board vo = BoardMapper.boardContent(idx);
	   return vo;
	}

}
