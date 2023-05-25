package kb03.multicampus.petandmet.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
/**
 * 상품 리뷰 
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewDto {
	
	private int no; // 기본키 pk
	private int pno; // 상품번호. 외래키 fk
	private String uname; // 사용자이름.
	private String content; // 리뷰 내용
	private int rate; // 평점(0, 1, 2, 3, 4, 5);
}
