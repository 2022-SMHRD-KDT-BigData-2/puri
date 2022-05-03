package kr.puri.entity;

public class Q_Answer {

private int	question_seq;
private int question_1;
private int question_2;
private int question_3;
private int question_4;
private int question_5;
private int question_6;
private int question_7;
private String id;

public Q_Answer() {
	
}

public Q_Answer(int question_seq, int question_1, int question_2, int question_3, int question_4, int question_5,
		int question_6, int question_7, String id) {
	this.question_seq = question_seq;
	this.question_1 = question_1;
	this.question_2 = question_2;
	this.question_3 = question_3;
	this.question_4 = question_4;
	this.question_5 = question_5;
	this.question_6 = question_6;
	this.question_7 = question_7;
	this.id = id;
}

public Q_Answer(int question_1, int question_2, int question_3, int question_4, int question_5,
		int question_6, int question_7, String id) {
	
	this.question_1 = question_1;
	this.question_2 = question_2;
	this.question_3 = question_3;
	this.question_4 = question_4;
	this.question_5 = question_5;
	this.question_6 = question_6;
	this.question_7 = question_7;
	this.id = id;
}

public int getQuestion_seq() {
	return question_seq;
}

public void setQuestion_seq(int question_seq) {
	this.question_seq = question_seq;
}

public int getQuestion_1() {
	return question_1;
}

public void setQuestion_1(int question_1) {
	this.question_1 = question_1;
}

public int getQuestion_2() {
	return question_2;
}

public void setQuestion_2(int question_2) {
	this.question_2 = question_2;
}

public int getQuestion_3() {
	return question_3;
}

public void setQuestion_3(int question_3) {
	this.question_3 = question_3;
}

public int getQuestion_4() {
	return question_4;
}

public void setQuestion_4(int question_4) {
	this.question_4 = question_4;
}

public int getQuestion_5() {
	return question_5;
}

public void setQuestion_5(int question_5) {
	this.question_5 = question_5;
}

public int getQuestion_6() {
	return question_6;
}

public void setQuestion_6(int question_6) {
	this.question_6 = question_6;
}

public int getQuestion_7() {
	return question_7;
}

public void setQuestion_7(int question_7) {
	this.question_7 = question_7;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}



}
