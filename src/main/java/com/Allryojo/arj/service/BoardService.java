package com.Allryojo.arj.service;

import java.util.List;
import com.Allryojo.arj.vo.BoardContentVO;
import com.Allryojo.arj.vo.BoardListVO;



public interface BoardService { // 서비스단 인터페이스 
	
	public List<BoardListVO> getList(); //「リスト」입력시 타는 함수 (혹은 메인 페이지 이동시)
    public BoardContentVO get(int bno); // 글 목록에서 제목 클릭시 해당 게시글이 보이는데  그 중 게시글 부분
    public List<BoardContentVO> getComment(int bno); // 글 목록에서 제목 클릭시 해당 게시글이 보이는데  그 중 댓글 부분 
    int insertComment(BoardContentVO boardVO); // 글 목록에서 제목 클릭시 해당 게시글이 보이는데  그 중 댓글 부분 
    int modify(BoardContentVO board); // 게시글 수정
    int remove(BoardContentVO board); // 게시글 삭제
}
