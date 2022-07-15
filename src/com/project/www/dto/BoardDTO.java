package com.project.www.dto;

import org.springframework.web.multipart.MultipartFile;

public class BoardDTO extends SuperDTO{
	private int bnum;
	private String bsub,bwriter,bcont,bdate,bimg;
	private MultipartFile bfile;
	
	public MultipartFile getBfile() {
		return bfile;
	}
	public void setBfile(MultipartFile bfile) {
		this.bfile = bfile;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getBsub() {
		return bsub;
	}
	public void setBsub(String bsub) {
		this.bsub = bsub;
	}
	public String getBwriter() {
		return bwriter;
	}
	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public String getBcont() {
		return bcont;
	}
	public void setBcont(String bcont) {
		this.bcont = bcont;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public String getBimg() {
		return bimg;
	}
	public void setBimg(String bimg) {
		this.bimg = bimg;
	}
	
	
}
