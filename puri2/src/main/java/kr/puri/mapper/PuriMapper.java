package kr.puri.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import kr.puri.entity.Member;

@Mapper
public interface PuriMapper {
	public List<Member> memberList();


	
}
