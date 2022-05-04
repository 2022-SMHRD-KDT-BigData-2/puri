package kr.puri.entity;

public class Disease_img {
	private int img_seq;
	private String disease_img;
	
	public Disease_img() {}
	
	public Disease_img(int img_seq, String disease_img) {
		this.img_seq = img_seq;
		this.disease_img = disease_img;
	}

	public int getImg_seq() {
		return img_seq;
	}

	public void setImg_seq(int img_seq) {
		this.img_seq = img_seq;
	}

	public String getDisease_img() {
		return disease_img;
	}

	public void setDisease_img(String disease_img) {
		this.disease_img = disease_img;
	}
	
}
