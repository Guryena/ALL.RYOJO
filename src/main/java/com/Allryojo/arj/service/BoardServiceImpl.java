package com.Allryojo.arj.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.Allryojo.arj.mapper.BoardMapper;
import com.Allryojo.arj.vo.BoardContentVO;
import com.Allryojo.arj.vo.BoardListVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService{ // 서비스단 인터페이스 구현 클래스
	
	@Autowired // injection
	private final BoardMapper mapper;
	
	@Override
	public List<BoardListVO> getList(){ //「リスト」입력시 타는 함수
	  log.info("getList()..");
	  
	  return mapper.getList();
	
	
	}

	@Override
	public BoardContentVO get(int bno) {  //「タイトル」클릭시 타는 함수. 그 중 게시글 부분
		log.info("get(int bno)..");
		return mapper.read(bno);
	}

	@Override
	public List<BoardContentVO> getComment(int bno) { //「タイトル」클릭시 타는 함수. 그 중 댓글 부분
		log.info("getComment(int bno)..");
		return mapper.readComment(bno);
	}

	@Override
	public int insertComment(BoardContentVO boardVO) { // 댓글 등록시 타는 함수
		log.info("insertComment()..");
		return mapper.insertComment(boardVO);
	}

	@Override
	public int modify(BoardContentVO board) {
		log.info("modify()..");
		return mapper.update(board);
	}

	@Transactional
	@Override
	public int remove(BoardContentVO board) {
		log.info("remove()..");
		
		mapper.deleteComment(board); //comment삭제
		mapper.deleteBoard(board); //원본글 삭제
		
		return 1;
	}
}
