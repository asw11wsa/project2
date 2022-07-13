package com.project.www.dto;

import java.util.List;

public class TourListDTO {
	private int num;
	private String title;
	private String region;
	private String content;
	private int tourdate;
	private String imga;
	private String imgb;
	private String imgc;
	private String createdate;
	private String updatedate;
	private List<TourAfterDTO> tourafters;
	
	public List<TourAfterDTO> getTourafters() {
		return tourafters;
	}
	public void setTourafters(List<TourAfterDTO> tourafters) {
		this.tourafters = tourafters;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getTourdate() {
		return tourdate;
	}
	public void setTourdate(int tourdate) {
		this.tourdate = tourdate;
	}
	public String getImga() {
		return imga;
	}
	public void setImga(String imga) {
		this.imga = imga;
	}
	public String getImgb() {
		return imgb;
	}
	public void setImgb(String imgb) {
		this.imgb = imgb;
	}
	public String getImgc() {
		return imgc;
	}
	public void setImgc(String imgc) {
		this.imgc = imgc;
	}
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}
	public String getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(String updatedate) {
		this.updatedate = updatedate;
	}
	
	
}
