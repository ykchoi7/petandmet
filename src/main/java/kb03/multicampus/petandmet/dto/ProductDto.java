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
	private String category; // 상품 종류
	private String image; // 사진
	private boolean patella; // 슬개골, 탈구질환
	private boolean tooth; // 구강질환
	private boolean skin; // 피부질환
	private boolean scaling; // 스켈링
		
}
