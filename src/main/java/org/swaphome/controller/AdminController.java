package org.swaphome.controller;

import org.swaphome.domain.*;
import org.swaphome.service.*;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
public class AdminController {

	@Setter(onMethod_ = { @Autowired })
	private MemberService service;
	@Setter(onMethod_ = { @Autowired })
	private ReqMemberService reqService;
	@Setter(onMethod_ = { @Autowired })
	private MessageService msService;
	@Setter(onMethod_ = { @Autowired })
	private BoardService boService;
	
	// Login
	@GetMapping("/login")
	public void login() {
		
		log.info("LoginPage");

	}

	// Member..
	@GetMapping("/member/memberAllApply")
	public void memberAllApply(Criteria cri, Model model) {
		
		log.info("MemberAllApplyPage");
		
		int total = reqService.getTotal(cri);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		model.addAttribute("list", reqService.getList(cri));
	}
	
	@GetMapping("/member/memberApply")
	public void memberApply(@RequestParam("gnum") int gNum, Model model) {
		
		log.info("MemberApplyPage");
		
		model.addAttribute("member", reqService.get(gNum));	
	}

	@GetMapping("/member/memberAllMessage")
	public void memberAllMessage(Criteria cri, Model model) {
		
		log.info("MemberAllMessagePage");
		
		int total = msService.getTotal(cri);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		model.addAttribute("list", msService.getList(cri));
	}
	
	@GetMapping("/member/memberMessage")
	public void MemberMessage(@RequestParam("pnum") int pNum, Model model) {
		
		log.info("memberMessagePage");

		model.addAttribute("message", msService.get(pNum));	
	}

	@GetMapping("/member/memberDeleteApply")
	public void memberDeleteApply() {
		
		log.info("MemberDeleteApplyPage");

	}

	@GetMapping("/member/memberDeleteMessage")
	public void memberDeleteMessage() {
		
		log.info("MemberDeleteMessagePage");

	}

	@GetMapping({"/member/memberInfo", "/member/memberModify"})
	public void memberInfo(@RequestParam("mnum") int mNum, @ModelAttribute("cri")
		Criteria cri, Model model) {
		
		log.info("MemberInfoPage");
		
		model.addAttribute("member", service.get(mNum));

	}
	
	/*@GetMapping("/member/memberModify")
	public void memberModify(@RequestParam("mnum") int mNum, Model model) {
		
		log.info("MemberModifyPage");

		model.addAttribute("member", service.get(mNum));
		
	}*/
	
	@GetMapping("/member/membersInfo")
	public void membersInfo(Criteria cri, Model model) {
		
		log.info("MembersInfoPage.." + cri);
		
		int total = service.getTotal(cri);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		model.addAttribute("list", service.getList(cri));
	}
	
	// Board..
	@GetMapping("/board/posting")
	public void posting() {
		
		log.info("PostingPage");
	}
	
	@GetMapping("/board/postsInfo")
	public void postsInfo(Criteria cri, Model model) {
		
		log.info("PostsInfoPage");
		
		int total = boService.getTotal(cri);
		
		log.info("total : " + total);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		model.addAttribute("list", boService.getList(cri));
	}
	
	@GetMapping({"/board/postInfo", "/board/postModify"})
	public void postInfo(@RequestParam("bno") int bno, @ModelAttribute("cri")
		Criteria cri, Model model) {
		
		log.info("BoardInfoPage");
		
		model.addAttribute("board", boService.get(bno));

	}
	
	// CRUD
	@GetMapping("/register")
	public void register() {
		
	}
	
	@PostMapping("/register")
	public String register(MemberVO member, RedirectAttributes rttr) {
		
		log.info("register: " + member);
		
		service.register(member);
		reqService.remove(member.getGnum());

		rttr.addFlashAttribute("result", member.getMnum());
		
		return "redirect:/admin/member/memberAllApply";
	}
	
	@PostMapping("/boardRegister")
	public String boardRegister(BoardVO board, RedirectAttributes rttr) {
		
		log.info("register: " + board);
		
		boService.register(board);

		rttr.addFlashAttribute("result", board.getBno());
		
		return "redirect:/admin/member/memberAllApply";
	}
	
	@PostMapping("/modify")
	public String modify(MemberVO member, @ModelAttribute("cri") Criteria cri, 
			RedirectAttributes rttr) {
		
		log.info("modify:" + member);
		
		if(service.modify(member)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pagenum", cri.getPagenum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/admin/member/membersInfo";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("mnum") int mNum, @ModelAttribute("cri") Criteria cri, 
			RedirectAttributes rttr) {
		
		log.info("remove:" + mNum);
		
		if(service.remove(mNum)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pagenum", cri.getPagenum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/admin/member/membersInfo";
	
	}

	// Calendar
	@GetMapping("/calendar")
	public void calendar() {
		log.info("CalendarPage");

	}
}
