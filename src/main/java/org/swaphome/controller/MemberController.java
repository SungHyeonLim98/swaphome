package org.swaphome.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.swaphome.domain.MessageVO;
import org.swaphome.domain.ReqMemberVO;
import org.swaphome.service.MessageService;
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
   
   @Setter(onMethod_ = { @Autowired })
   private MessageService msService;
   
   @GetMapping("/registerTest")
   public String login() {

      return "member/registerTest";
   }
   
   @GetMapping("/board/promoBoard")
   public void promoBoard() {

	   log.info("PromoBoardPage");
   }
   
   @GetMapping("/board/promoBoardDetail")
   public void promoBoardDetail() {

	   log.info("PromoBoardDetailPage");
   }
   
   @GetMapping("/board/activityBoard")
   public void activityBoard() {

	   log.info("ActivityBoardPage");
   }
   
   @GetMapping("/board/activityBoardDetail")
   public void activityBoardDetail() {

	   log.info("ActivityBoardDetailPage");
   }
   
   @GetMapping("/board/noticeBoard")
   public void noticeBoard() {

	   log.info("NoticeBoardPage");
   }
   
   @GetMapping("/board/noticeBoardDetail")
   public void noticeBoardDetail() {

	   log.info("NoticeBoardDetailPage");
   }
   
   @GetMapping("/user/note")
   public void note() {

	   log.info("NotePage");
   }
   
   @GetMapping("/user/register")
   public void register() {

	   log.info("Register");
   }
   
   // CRUD
   @PostMapping("/register")
   public String register(ReqMemberVO member, RedirectAttributes rttr) {
      
      log.info("register: " + member);
      
      service.register(member);
      rttr.addFlashAttribute("result", member.getGnum());
      
      return "redirect:/admin/member/memberAllApply";
   }
   
   @PostMapping("/messageRegister")
	public String meessageRegister(MessageVO message, RedirectAttributes rttr) {
		
		log.info("messageRegister: " + message);
		
		msService.register(message);
		
		rttr.addFlashAttribute("result", message.getPnum());
		
		return "redirect:/member/board/activityBoard";
	}
}