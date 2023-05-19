package com.Allryojo.arj.page;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class Criteria { // 페이징 처리를 위한 클래스
	
	//페이징 처리를 위해서 페이지 번호와 
	//페이지 당 몇개의 데이터를 보여줘야 할 것인지 결정되어야함

	private int pageNum; //페이지 번호
    private int amount; // 페이지 당 몇개의 데이터를 보여줄 것인가?
    
    public Criteria() {
    	this(1,10); // 기본값 한 페이지 당 10개로 지정
    	
    }
    
    public Criteria(int pageNum, int amount) {
          this.pageNum=pageNum;
          this.amount=amount;
    }
}
