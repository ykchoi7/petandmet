package kb03.multicampus.petandmet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 상품 추천할 때 필요한 데이터들을 전송하기 위해 사용되는 DTO
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductRecommendRequestDto {
	
	private int petNo;
	private String category;

}
