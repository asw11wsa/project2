package com.project.www.dto;

public class ContactDTO {
	private int num;
	private int r_num;
	private String sender;
	private String receiver;
	private String msg;
	private int status; // 0 : 아무도 알람 없음 , 1 : 고객 알람 , 2: 관리자 알람
	private int statuscnt;
	private String createdate;
	
	public int getStatuscnt() {
		return statuscnt;
	}
	public void setStatuscnt(int statuscnt) {
		this.statuscnt = statuscnt;
	}
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}
	
	
}
