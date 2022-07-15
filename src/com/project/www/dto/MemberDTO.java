package com.project.www.dto;

public class MemberDTO extends SuperDTO{
	
	private int mnum;
    private String mid;
    private String mpwd;
    private String mname;
    private String mjubun;
    private String memail;
    private String mphone;
    private String madr;
    private String mdate;
    
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public int getMnum() {
		return mnum;
	}
	public void setMnum(int mnum) {
		this.mnum = mnum;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpwd() {
		return mpwd;
	}
	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMjubun() {
		return mjubun;
	}
	public void setMjubun(String mjubun) {
		this.mjubun = mjubun;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMphone() {
		return mphone;
	}
	public void setMphone(String mphone) {
		this.mphone = mphone;
	}
	public String getMadr() {
		return madr;
	}
	public void setMadr(String madr) {
		this.madr = madr;
	}

}