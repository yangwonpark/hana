package com.itbank.tour_item;

public class Paging {
	
	private final int perPage = 10;
	private int pageCount;
	private int boardCount;
	private int first;
	private int last;
	private final int perSection = 10;
	private int begin;
	private int end;
	private int section;
	private int page;
	
	private boolean prev;
	private boolean next;
	
	public Paging(int page, int boardCount) {
		this.page = page;
		this.boardCount = boardCount;
		pageCount = boardCount / perPage;
		pageCount += (boardCount % perPage) == 0 ? 0 : 1;
		
		first = (page - 1) * perPage + 1;
		last = first + perPage - 1;
		
		section = (page - 1) / 10;
		begin = 10 * section + 1;
		end = begin + perSection - 1;
		end = end > pageCount ? pageCount : end;
		
		prev = section != 0;
		next = boardCount > perPage * end;
	}
	
	public int getPerPage() {
		return perPage;
	}

	public int getPageCount() {
		return pageCount;
	}

	public int getBoardCount() {
		return boardCount;
	}

	public int getFirst() {
		return first;
	}

	public int getLast() {
		return last;
	}

	public int getPerSection() {
		return perSection;
	}

	public int getBegin() {
		return begin;
	}

	public int getEnd() {
		return end;
	}

	public int getSection() {
		return section;
	}

	public int getPage() {
		return page;
	}

	public boolean isPrev() {
		return prev;
	}

	public boolean isNext() {
		return next;
	}	
}