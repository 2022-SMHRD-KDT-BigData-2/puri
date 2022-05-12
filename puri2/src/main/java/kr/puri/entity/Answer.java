package kr.puri.entity;

public class Answer {

	private int answer_seq;
	private int write_seq;
	private String answer_content;
	private String id;
	
	public Answer() {
		
	}
	
	public Answer(int answer_seq, int write_seq, String answer_content, String id) {
		this.answer_seq = answer_seq;
		this.write_seq = write_seq;
		this.answer_content = answer_content;
		this.id = id;
	}
	public Answer(int write_seq, String answer_content, String id) {
		
		this.write_seq = write_seq;
		this.answer_content = answer_content;
		this.id = id;
	}
	
	public int getAnswer_seq() {
		return answer_seq;
	}

	public void setAnswer_seq(int answer_seq) {
		this.answer_seq = answer_seq;
	}

	public int getWrite_seq() {
		return write_seq;
	}

	public void setWrite_seq(int write_seq) {
		this.write_seq = write_seq;
	}

	public String getAnswer_content() {
		return answer_content;
	}

	public void setAnswer_content(String answer_content) {
		this.answer_content = answer_content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
}
