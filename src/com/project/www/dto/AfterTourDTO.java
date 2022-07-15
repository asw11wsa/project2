package com.project.www.dto;

import org.springframework.web.multipart.MultipartFile;

public class AfterTourDTO extends SuperDTO{
	private int num;
	private int tournum;
	private int booknum;
	private String title;
	private String content;
	private String booker;
	private String imgn;
	private int stars;
	private MultipartFile mfile;
	
	public MultipartFile getMfile() {
		return mfile;
	}
	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getTournum() {
		return tournum;
	}
	public void setTournum(int tournum) {
		this.tournum = tournum;
	}
	public int getBooknum() {
		return booknum;
	}
	public void setBooknum(int booknum) {
		this.booknum = booknum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getBooker() {
		return booker;
	}
	public void setBooker(String booker) {
		this.booker = booker;
	}
	public String getImgn() {
		return imgn;
	}
	public void setImgn(String imgn) {
		this.imgn = imgn;
	}
	public int getStars() {
		return stars;
	}
	public void setStars(int stars) {
		this.stars = stars;
	}
	
	
	
}
