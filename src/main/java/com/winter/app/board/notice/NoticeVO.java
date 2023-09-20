package com.winter.app.board.notice;

import java.sql.Date;
import java.util.List;

import com.winter.app.board.BoardVO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeVO extends BoardVO{
	
	private Long ref;
	private Long step;
	private Long depth;
	private List<NoticeFileVO> list;

}
