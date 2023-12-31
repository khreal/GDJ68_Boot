package com.winter.app.commons;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

import com.winter.app.board.FileVO;

import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class FileDownView extends AbstractView {
	
	@Value("${app.upload}")
	private String filePath;	
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		//서버에서 파일을 찾아서 client로 전송
		//어떤파일을 어디에서
		String board = (String)model.get("board");
		FileVO fileVO = (FileVO)model.get("fileVO"); 
		File file = new File(filePath+board, fileVO.getFileName());
		
		//한글 처리
		response.setCharacterEncoding("UTF-8");
		
		//총 파일의 크기
		response.setContentLengthLong(file.length());
		
		//다운로드시 파일의 이름을 인코딩
		String downName = URLEncoder.encode(fileVO.getOriName(), "UTF-8");
		 
		//header 설정
		response.setHeader("Content-Disposition", "attachment;filename=\""+downName+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		//HDD에서 파일을 읽고
		FileInputStream fi = new FileInputStream(file);
		//Client 로 전송 준비
		OutputStream os = response.getOutputStream();
		
		//전송
		FileCopyUtils.copy(fi, os);
		 
		//자원 해제
		os.close();
		fi.close();		 
		
		log.info("--------------------FileDownView-------------------");
		log.info("board : {} ", board);
	}
}
