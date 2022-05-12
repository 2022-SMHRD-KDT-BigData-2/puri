package kr.puri.entity;

public class Disease_Info {
	private int info_seq;
	private String disease_name;
	private String disease_sym;
	private String disease_manage;
	private String disease_img;
	private String rs;
	public Disease_Info() {   }
	public Disease_Info(int info_seq, String disease_name, String disease_sym, String disease_manage, String disease_img, String rs) {
		this.info_seq = info_seq;
		this.disease_name = disease_name;
		this.disease_sym = disease_sym;
		this.disease_manage = disease_manage;
		this.disease_img = disease_img;
		this.rs = rs;
	}
	
	public int getInfo_seq() {
		return info_seq;
	}
	public void setInfo_seq(int info_seq) {
		this.info_seq = info_seq;
	}
	public String getDisease_name() {
		return disease_name;
	}
	public void setDisease_name(String disease_name) {
		this.disease_name = disease_name;
	}
	public String getDisease_sym() {
		return disease_sym;
	}
	public void setDisease_sym(String disease_sym) {
		this.disease_sym = disease_sym;
	}
	public String getDisease_manage() {
		return disease_manage;
	}
	public void setDisease_manage(String disease_manage) {
		this.disease_manage = disease_manage;
	}
	public String getDisease_img() {
		return disease_img;
	}
	public void setDisease_img(String disease_img) {
		this.disease_img = disease_img;
	}
	public String getRs() {
		return rs;
	}
	public void setRs(String rs) {
		this.rs = rs;
	}
	
}
