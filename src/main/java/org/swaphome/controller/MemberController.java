package org.swaphome.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.swaphome.domain.ReqMemberVO;
import org.swaphome.service.ReqMemberService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
public class MemberController {
	
	@Setter(onMethod_ = { @Autowired })
	private ReqMemberService service;
	
	@GetMapping("/registerTest")
	public String login() {

		return "member/registerTest";
	}
	
	// CRUD
	@PostMapping("/member/register")
	public String register(ReqMemberVO member, RedirectAttributes rttr) {
		
		log.info("register: " + member);
		
		service.register(member);
		rttr.addFlashAttribute("result", member.getGnum());
		
		return "redirect:/admin/member/memberAllApply";
	}
}
