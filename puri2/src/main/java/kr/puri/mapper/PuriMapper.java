package kr.puri.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import kr.puri.entity.Member;

@Mapper
public interface PuriMapper {
	// 회원가입
	public void SignUp(Member vo);

	public Member memberLogin(Member vo);

	public List<Member> memberList();

}
