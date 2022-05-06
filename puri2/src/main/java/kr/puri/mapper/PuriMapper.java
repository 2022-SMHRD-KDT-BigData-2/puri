package kr.puri.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import kr.puri.entity.Member;
import kr.puri.entity.Plant;
import kr.puri.entity.Question;

@Mapper
public interface PuriMapper {
	// 회원가입
	public void SignUp(Member vo);

	public Member Login(Member vo);

	public int idCheck(String id);

	public void q_Insert(Question qvo);

	public List<Plant> plantList();

	public List<Member> memberList();

	public void stord_img(String stored_img);

}
