package kr.puri.entity;

public class Question {

private int	question_seq;
private int q_1;
private int q_2;
private int q_3;
private int q_4;
private int q_5;
private int q_6;
private int q_7;
private String id;

public Question() {
	
}



public Question(int question_seq, int q_1, int q_2, int q_3, int q_4, int q_5, int q_6, int q_7, String id) {
	this.question_seq = question_seq;
	this.q_1 = q_1;
	this.q_2 = q_2;
	this.q_3 = q_3;
	this.q_4 = q_4;
	this.q_5 = q_5;
	this.q_6 = q_6;
	this.q_7 = q_7;
	this.id = id;
}




public Question(int q_1, int q_2, int q_3, int q_4, int q_5, int q_6, int q_7, String id) {
	this.q_1 = q_1;
	this.q_2 = q_2;
	this.q_3 = q_3;
	this.q_4 = q_4;
	this.q_5 = q_5;
	this.q_6 = q_6;
	this.q_7 = q_7;
	this.id = id;
}



public int getQuestion_seq() {
	return question_seq;
}



public void setQuestion_seq(int question_seq) {
	this.question_seq = question_seq;
}



public int getQ_1() {
	return q_1;
}



public void setQ_1(int q_1) {
	this.q_1 = q_1;
}



public int getQ_2() {
	return q_2;
}



public void setQ_2(int q_2) {
	this.q_2 = q_2;
}



public int getQ_3() {
	return q_3;
}



public void setQ_3(int q_3) {
	this.q_3 = q_3;
}



public int getQ_4() {
	return q_4;
}



public void setQ_4(int q_4) {
	this.q_4 = q_4;
}



public int getQ_5() {
	return q_5;
}



public void setQ_5(int q_5) {
	this.q_5 = q_5;
}



public int getQ_6() {
	return q_6;
}



public void setQ_6(int q_6) {
	this.q_6 = q_6;
}



public int getQ_7() {
	return q_7;
}



public void setQ_7(int q_7) {
	this.q_7 = q_7;
}



public String getId() {
	return id;
}



public void setId(String id) {
	this.id = id;
}



}
