package com.Allryojo.arj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.Allryojo.arj.page.Criteria;
import com.Allryojo.arj.vo.BoardContentVO;
import com.Allryojo.arj.vo.BoardListVO;

@Mapper
public interface BoardMapper { // 마이바티스를 사용하여 DB접근을 위한 인터페이스 
	
	public List<BoardListVO> getList(); 
	public BoardContentVO read(int bno); // 해당 게시글 중 본 게시글. 파라미터는 url로 넘어오는 bid값을 의미
	public List<BoardContentVO> readComment(int bno); // 해당 게시글의 댓글 부분. 
	public int insertComment(BoardContentVO boardVO); // 댓글 삽입 부분. 
    public int update (BoardContentVO board);  // 댓글 수정 부분
    public int deleteComment(BoardContentVO board);  // 게시글 중 댓글 삭제 
    public int deleteBoard(BoardContentVO board);  // 게시글 중 원본글 삭제 
    public int insert(BoardContentVO board); // 게시글 등록  
    public int countHit(BoardContentVO board); // 조회수 증가  
    public int replyRemove(BoardContentVO board); // 하나의 댓글 삭제  
    


    //패이징 관련
    int getTotalCount();
    public List<BoardListVO>getListWithPaging(Criteria cri);
    
}
