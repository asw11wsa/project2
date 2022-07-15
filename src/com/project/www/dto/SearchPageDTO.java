package com.project.www.dto;

public class SearchPageDTO {
	private String searchtitle;
	private String searchregion;
	private int start;
	private int end;
	private String cPage;
	
	public String getcPage() {
		return cPage;
	}
	public void setcPage(String cPage) {
		this.cPage = cPage;
	}
	public String getSearchtitle() {
		return searchtitle;
	}
	public void setSearchtitle(String searchtitle) {
		this.searchtitle = searchtitle;
	}
	public String getSearchregion() {
		return searchregion;
	}
	public void setSearchregion(String searchregion) {
		this.searchregion = searchregion;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	
	
}
