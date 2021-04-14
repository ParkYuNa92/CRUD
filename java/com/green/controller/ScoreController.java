package com.green.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.service.ScoreService;
import com.green.vo.ScoreVO;

import lombok.Setter;

@Controller
@RequestMapping("/score/*")
public class ScoreController {
	@Setter(onMethod_=@Autowired)
	ScoreService service;
	
	@RequestMapping("/list")
	public String list(Model model) {
		System.out.println("컨트롤러 전체 목록: ");
		model.addAttribute("list", service.list());
		return "/score/list";
	}
	@GetMapping("/get")
	public String get(Long sno, Model model) {
		System.out.println("컨트롤러에서 데이터 하나 조회 : "+sno);
		model.addAttribute("score", service.read(sno));
		return "/score/get";
	}
	
	@GetMapping("/modify")
	public void modify(Long sno, Model model) {
		System.out.println("컨트롤러에서 데이터 하나 조회 : "+sno);
		model.addAttribute("score", service.read(sno));
		
	}
	
	@PostMapping("/modify")
	public String modify(Model model, ScoreVO vo) {
		service.update(vo);
		return "redirect:/score/list";
	}
	@PostMapping("/delete") //수정할 때는 post
	public String delete(Long sno, Model model) {
		service.delete(sno);
		return "redirect:/score/list";
	}

}
