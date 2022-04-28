package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import kr.board.entity.Board;
import kr.board.entity.Member;

// DAO
@Mapper
public interface BoardMapper {
	// Connection? / SqlSessionFactory? → xml 파일연결
	public List<Board> boardList(); 
	public void boardInsert(Board vo);
	public Board boardContent(int idx);
	
	@Delete("delete from board where idx=#{idx}")
	public void boardDelete(int idx);
	public void boardUpdate(Board vo);
	public void boardUpdate1(Board vo);
	
	@Update("update board set content=#{content} where idx=#{idx}")
	public void boardContentUpdate(Board vo);
	
	@Update("update board set count=count+1 where idx=#{idx}")
	public void updateCount(int idx);
	
	public Member memberLogin(Member mvo);
}
