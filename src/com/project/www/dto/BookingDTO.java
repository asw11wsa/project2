package com.project.www.dto;

public class BookingDTO extends SuperDTO{
	private int num;
	private int tournum;
	private String personchk;
	private int jumin;
	private int phone;
	private String email;
	private String engfirst;
	private String englast;
	private String booker;
	private String name;
	private int booknum;
	public int getBooknum() {
		return booknum;
	}
	public void setBooknum(int booknum) {
		this.booknum = booknum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getPersonchk() {
		return personchk;
	}
	public void setPersonchk(String personchk) {
		this.personchk = personchk;
	}
	public int getJumin() {
		return jumin;
	}
	public void setJumin(int jumin) {
		this.jumin = jumin;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEngfirst() {
		return engfirst;
	}
	public void setEngfirst(String engfirst) {
		this.engfirst = engfirst;
	}
	public String getEnglast() {
		return englast;
	}
	public void setEnglast(String englast) {
		this.englast = englast;
	}
	public String getBooker() {
		return booker;
	}
	public void setBooker(String booker) {
		this.booker = booker;
	}
	
	
}
