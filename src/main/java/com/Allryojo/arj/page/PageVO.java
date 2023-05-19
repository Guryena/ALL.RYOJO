package com.Allryojo.arj.page;


import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class PageVO { // 페이징 처리할 때 필요한 정보들
	
	private int startPage; // 화면에 보여지는 페이지 시작 번호
	private int endPage; // 화면에 보여지는 페이지 끝 번호
	private boolean prev, next; // 이전과 다음으로 이동 가능한 링크 표시
	
	private int total;// 전체 게시판 글 수
	private Criteria cri;
	
	public PageVO(Criteria cri, int total) {
		
		this.cri = cri;
		this.total=total; // 전체 데이터 수
	
    this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10;
    this.startPage = this.endPage - 9;

 // Total을 통한 endPage의 재계산
    // 10개씩 보여주는 경우, 전체 데이터 수가 80개라고 가정하면 끝번호는 10이 아닌 8이 됨
    int realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount()));

    if (realEnd <= this.endPage) {
       this.endPage = realEnd;
    } // 시작번호가 1보다 큰경우 존재
    this.prev = this.startPage > 1; // <<
    // realEnd가 끝번호(endPage)보다 큰 경우에만 존재
    this.next = this.endPage < realEnd; // >>

 }

 //get방식 문구를 좀 더 쉽게 만들어주기 위한 함수
 public String makeQuery(int page) {
    UriComponents uriComponentsBuilder = UriComponentsBuilder.newInstance()
          .queryParam("pageNum", page) // pageNum =  3
          .queryParam("amount", cri.getAmount()) // pageNum=3&amount=10
          .build(); // ?pageNum=3&amount=10
    return uriComponentsBuilder.toUriString(); // ?pageNum=3&amount=10 리턴
 }


	}

