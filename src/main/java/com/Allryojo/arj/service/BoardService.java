package com.Allryojo.arj.service;

import java.util.List;

import com.Allryojo.arj.page.Criteria;
import com.Allryojo.arj.vo.BoardContentVO;
import com.Allryojo.arj.vo.BoardListVO;



public interface BoardService { // 서비스단 인터페이스 
	
	public List<BoardListVO> getList(); //「リスト」입력시 타는 함수 (혹은 메인 페이지 이동시)
    public BoardContentVO get(int bno); // 글 목록에서 제목 클릭시 해당 게시글이 보이는데  그 중 게시글 부분
    public List<BoardContentVO> getComment(int bno); // 글 목록에서 제목 클릭시 해당 게시글이 보이는데  그 중 댓글 부분 
    public int insertComment(BoardContentVO boardVO); // 글 목록에서 제목 클릭시 해당 게시글이 보이는데  그 중 댓글 부분 
    public int modify(BoardContentVO board); // 게시글 수정
    public int remove(BoardContentVO board); // 게시글 삭제
    public int register(BoardContentVO board); // 게시글 등록
    public int hitUpdate(BoardContentVO board); // hit 업데이트
	/*
	 * public int tableCount(); // 총 게시글 개수
	 */
    public int replyDelete(BoardContentVO board); // 댓글 삭제
    
    
    
    //페이징
    int getTotal();
    public List<BoardListVO>getList(Criteria criteria); // 오버로딩
    
}
