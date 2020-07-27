package com.laptrinhjavaweb.paging.copy;


public interface Pageble {
	Integer getPage();
	Integer getOffset();
	Integer getLimit();
	Sorter getSorter();
}
