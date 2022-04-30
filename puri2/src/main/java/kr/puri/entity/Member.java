package kr.puri.entity;

public class Member {
	String id;
	String pw;
	String nick;
	String gender;
	int age;
	public Member(){}
	
	public Member(String id, String pw, String nick, String gender, int age) {
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.gender = gender;
		this.age = age;
	}
	
	
	public Member(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	   @Override
	   public String toString() {
	      return "Member [id=" + id + ", pw=" + pw + ", nick=" + nick + ", gender=" + gender + ", age=" + age + "]";
	   }
	   
}
