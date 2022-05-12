package kr.puri.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.puri.entity.Answer;
import kr.puri.entity.Board;
import kr.puri.entity.Member;
import kr.puri.entity.Myplant;
import kr.puri.entity.Plant;
import kr.puri.entity.Question;
import kr.puri.entity.Tool;

@Mapper
public interface PuriMapper {
	// 회원가입
	public void SignUp(Member vo);

	public Member Login(Member vo);

	public void q_Insert(Question qvo);

	public List<Plant> plantList(String id);

	public List<Member> memberList();

	public void stord_img(String stored_img);

	public Member nickCheck(String nick);

	public Member idCheck(String id);

	public void boardInsert(Board bvo);

	public List<Board> boardList();

	@Select("select * from write where write_seq=#{write_seq}")
	public Board boardContent(int write_seq);

	@Delete("delete from write where write_seq=#{seq}")
	public void boardDelete(int seq);

	public List<Tool> toolList1();

	public List<Tool> toolList2();

	public List<Tool> toolList3();

	public void myPlantInsert(Myplant vo);

	// public List<Myplant> myplantList();

	// public List<Myplant> myplantList(Member vo);

	public List<Myplant> myplantList(String id);

	public void answerInsert(Answer avo);

	@Delete("delete from answer where answer_seq=#{answer_seq}")
	public void answerDelete(int answer_seq);
	
	public List<Answer> answerList(int write_seq);
}
