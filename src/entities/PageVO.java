package entities;

import java.util.List;


public class PageVO<T> {

	private int page;
	private int recordOfPage;
	private int recordCount;
	private int pageCount;
	private List<T> list;
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRecordOfPage() {
		return recordOfPage;
	}
	public void setRecordOfPage(int recordOfPage) {
		this.recordOfPage = recordOfPage;
	}
	public int getRecordCount() {
		return recordCount;
	}
	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	
	
}
