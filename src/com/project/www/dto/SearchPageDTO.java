package com.project.www.dto;

public class SearchPageDTO {
	// ���� Map�� �־��� start
	private int start;
	// ���� Map�� �־��� end
	private int end;
	// ���ڷ� �޾� �ͼ� ó���ϴ� cPage
	private String cPage;
	// �˻��� Į���� ������ key ��
	private String searchkey;
	// �˻��� �� ��
	private String searchval;
	// �˻� ��ư�� �������� �������� 1�������� �̵� ��Ű�� ���� �ʱ�ȭ��
	private String startsearch;
	
	private String searchid;
	
	// ������ ���ڷ� �޾� �Դ� ���� RequestParam�� �̿��ؼ� defaultValue��  �����Ҽ� ������
	// dto�� ������ �����ö��� ����Ҽ� ���� ������ �����ڸ� �̿��ؼ� �ʱ�ȭ
	public SearchPageDTO() {
		cPage = "1";
		searchkey = "";
		searchval = "";
		startsearch = "";
	}
	
	// �Ʒ��� ���� setter ��  getter
	
	public String getStartsearch() {
		return startsearch;
	}

	public String getSearchid() {
		return searchid;
	}

	public void setSearchid(String searchid) {
		this.searchid = searchid;
	}

	public void setStartsearch(String startsearch) {
		this.startsearch = startsearch;
	}

	public String getSearchkey() {
		return searchkey;
	}
	public void setSearchkey(String searchkey) {
		this.searchkey = searchkey;
	}
	public String getSearchval() {
		return searchval;
	}
	public void setSearchval(String searchval) {
		this.searchval = searchval;
	}
	public String getcPage() {
		return cPage;
	}
	public void setcPage(String cPage) {
		this.cPage = cPage;
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
