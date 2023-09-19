package com.winter.app.board;

import java.util.List;

import com.winter.app.commons.Pager;

public interface BoardDAO {

	public List<BoardVO> getList(Pager pager)throws Exception;
	
	public int add(BoardVO boardVO) throws Exception;
}
