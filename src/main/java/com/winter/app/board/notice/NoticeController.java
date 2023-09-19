package com.winter.app.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.winter.app.board.BoardVO;
import com.winter.app.commons.Pager;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/notice/*")
@Slf4j
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	//Model and View, void, String
	@GetMapping("list")
	public String getList(Pager pager, Model model) throws Exception{
		List<BoardVO> ar = noticeService.getList(pager);
		model.addAttribute("list", ar);
		//error, warn, info, debug, trace
//		log.error("getList 실행");
		return "board/list";				
	}
	
	@GetMapping("add")
	public String add() throws Exception{
		return "board/add";
	}
	
	@PostMapping("add")
	public String add(NoticeVO noticeVO) throws Exception{
//		log.info("NoticeVO : {}", noticeVO);
		int result = noticeService.add(noticeVO);
		return "redirect:./list";
	}
	
	@GetMapping("update")
	public String update(NoticeVO noticeVO, Model model) throws Exception{
		noticeVO = (NoticeVO) noticeService.getDetail(noticeVO);
		model.addAttribute("detail", noticeVO);
		return "board/update";
	}
	
	@PostMapping("update")
	public String update(NoticeVO noticeVO) throws Exception{			
		int result = noticeService.setUpdate(noticeVO);
		return "redirect:./detail?boardNo="+noticeVO.getBoardNo();		
	}

	
	@GetMapping("detail")
	public String detail(NoticeVO noticeVO, Model model) throws Exception{		
		noticeVO = (NoticeVO) noticeService.getDetail(noticeVO);
		model.addAttribute("dto", noticeVO);
		return "board/detail";
	}
	
	@GetMapping("delete")
	public String delete(NoticeVO noticeVO) throws Exception{		
		int result = noticeService.setDelete(noticeVO);
		return "redirect:./list";
	}
	
	
}
