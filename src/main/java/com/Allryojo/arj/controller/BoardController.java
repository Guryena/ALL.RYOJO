package com.Allryojo.arj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.Allryojo.arj.service.BoardService;
import com.Allryojo.arj.vo.BoardContentVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/jboard/*") // value={"","","",""} 이런식으로 여러개를 쓸수있다.
public class BoardController { // 클라이언트에서 처음 치고 들어올 때 BoardController부터 실행

	@Autowired
	private BoardService boardService; // BoardService 주입

	@GetMapping("/list") // list를 치고 들어올 때익명게시판 메인페이지가 보여진다.
	public String view_list(Model model) {

		log.info("view_list()..");
		System.out.println("view_list()..");
		System.out.println(boardService.getList());
		model.addAttribute("boards", boardService.getList());

		return "/board/list";
	}

	@GetMapping("/content_view") // 「タイトル」클릭시 해당글이 보여진다.
	public String content_view(BoardContentVO boardVO, Model model) {

		log.info("content_view()..");
		int bid = boardVO.getB_no();

		BoardContentVO content = boardService.get(bid); // 해당 게시글 내용보기

		List<BoardContentVO> reply = boardService.getComment(bid); // 해당 댓글보기 리스트로 만들기
		 System.out.println(reply);

		model.addAttribute("content_view", content);
		model.addAttribute("reply_view", reply);

		return "/board/content_view2";

	}

	@PostMapping("/writeComment") // 댓글쓰기 버튼을 누르면 이 함수를 탄다. (등록한 댓글이 DB에 들어가야함)
	public String insertComment(BoardContentVO boardVO) {

		log.info("insertComment()..");
		
		System.out.println(boardVO);
		
		boardService.insertComment(boardVO);

		// model.addAttribute("content_view", content);
		// model.addAttribute("reply_view", reply);

		return "redirect:/jboard/content_view?b_no="+ boardVO.getB_no();

	}
	
	@PostMapping ("/modify") // 게시글에서 수정버튼 누르면 타는 함수
	public String modify(BoardContentVO boardVO) {
		log.info("modify()..");
		int rn = boardService.modify(boardVO);
		
		log.info("modify..::" + rn);
		System.out.println(rn);
		
		return "redirect:list"; 
		
	}
	
	@GetMapping("/delete")
	public String delete(BoardContentVO boardVO) {
		log.info("delete()..");
		
		int rn = boardService.remove(boardVO);
		
		System.out.println(rn);
        return "redirect:list";
	}

}
