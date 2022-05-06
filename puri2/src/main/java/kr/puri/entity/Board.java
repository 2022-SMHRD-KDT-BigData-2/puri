package kr.puri.entity;

import javax.servlet.http.HttpServletRequest;

public class Board {

	private int write_seq;
	private String write_title;
	private String write_content;
	private String id;
	private String write_img;
	
	public Board() {
		
	}
	
	public Board(int write_seq, String write_title, String write_content, String id, String write_img) {
		this.write_seq = write_seq;
		this.write_title = write_title;
		this.write_content = write_content;
		this.id = id;
		this.write_img = write_img;
	}
	public Board(String write_title, String write_content, String id, String write_img) {
		this.write_title = write_title;
		this.write_content = write_content;
		this.id = id;
		this.write_img = write_img;
	}

	
	public int getWrite_seq() {
		return write_seq;
	}
	public void setWrite_seq(int write_seq) {
		this.write_seq = write_seq;
	}
	public String getWrite_title() {
		return write_title;
	}
	public void setWrite_title(String write_title) {
		this.write_title = write_title;
	}
	public String getWrite_content() {
		return write_content;
	}
	public void setWrite_content(String write_content) {
		this.write_content = write_content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getWrite_img() {
		return write_img;
	}
	public void setWrite_img(String write_img) {
		this.write_img = write_img;
	}
	
	
	
}
