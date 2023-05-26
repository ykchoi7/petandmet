package kb03.multicampus.petandmet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDto {
   
	private int no; // 기본키 PK
	private String name; // 상품명
	private int price; // 가격
	private String image; // 사진
	private String pet_type; // 강아지 or 고양이 
	private String category; // 상품 종류(사료, 간식, 장난감)
	
	/* 상품 종류가 사료일경우
		강아지사료(퍼피(1세미만), 어덜트(1세이상7세미만), 시니어(7세이상), 전연령)
		고양이사료(키튼(1세미만), 어덜트(1세이상7세미만), 시니어(7세이상), 전연령)
	*/
	private String feed_type;
	
	private boolean patella; // 슬개골, 탈구질환
	private boolean tooth; // 구강질환
	private boolean skin; // 피부질환
	private boolean scaling; // 스켈링
		
}
