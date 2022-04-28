package kr.board.entity;

public class Member {
	// 1. 정보은닉(private)
	private String memId;
	private String memPwd;
	private String memName;
	
	// 4. 생성자 메소드(선택)
	public Member() {}
	// 초기화를 하는 생성자 메소드 (오버로딩)
	public Member(String memId, String memPwd, String memName) {
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
	}
	
	// 2. getter, setter 메소드
	public String getMemId() {
		return memId;
	}
	
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPwd() {
		return memPwd;
	}
	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}	
	
	// 3. 객체가 가지고 있는 데이터 전체를 String으로 리턴해주는 메소드(디버깅)
	@Override
	public String toString() {
		return "Member [memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName + "]";
	}
	
	
}
