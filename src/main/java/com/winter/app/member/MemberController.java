package com.winter.app.member;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/member/*")
@Slf4j
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("update")
	public void setUpdate(HttpSession session, Model model) throws Exception{
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		memberVO = memberService.getLogin(memberVO);
		
		MemberInfoVO infoVO = new MemberInfoVO();
		infoVO.setName(memberVO.getName());
		infoVO.setBirth(memberVO.getBirth());
		infoVO.setEmail(memberVO.getEmail());
		model.addAttribute("memberInfoVO", infoVO);
	}
	
	@PostMapping("update")
	public void setUpdate(@Valid MemberInfoVO memberInfoVO, BindingResult bindingResult) throws Exception{
		
	}
	
	@GetMapping("logout")
	public String getLogout(HttpSession session) throws Exception{
		session.invalidate();
		
		return "redirect:../";
	}
	
	@GetMapping("login")
	public void getLogin(@ModelAttribute MemberVO memberVO)throws Exception{
//		MemberVO memberVO = new MemberVO();
//		model.addAttribute("memberVO", memberVO);
	}
		
	@PostMapping("login")
	public String getLogin(MemberVO memberVO, HttpSession session)throws Exception{
		memberVO = memberService.getLogin(memberVO);
		
		if(memberVO != null) {
			session.setAttribute("member", memberVO);
			return "redirect:../";
		}
		
		return "redirct:./login";
		
	}
	
	
//	@GetMapping("join")	
//	public void setJoin(Model model) throws Exception{
//		MemberVO memberVO = new MemberVO();
//		model.addAttribute("memberVO", memberVO);
//	}
	
	//클래스의 첫글자를 소문자로 바꿔서 키 이름으로 전송, 위의 코드와 동일함
	@GetMapping("join")	
	public void setJoin(@ModelAttribute MemberVO memberVO) throws Exception{
		
	}
	
	//bindingresult의 위치가 중요함. VO클래스 뒤에 위치
	@PostMapping("join")	
	public String setJoin(@Valid MemberVO memberVO,BindingResult bindingResult, MultipartFile photo) throws Exception{
		
		boolean check = memberService.getMemberError(memberVO, bindingResult);
		if(bindingResult.hasErrors() || check) {
			return "member/join";
		}
		
		//회원가입 진행
		
		
		log.info("photo : {} --- size : {}", photo.getOriginalFilename(), photo.getSize());
		return "redirect:../";
		
		
	}	
	
}
