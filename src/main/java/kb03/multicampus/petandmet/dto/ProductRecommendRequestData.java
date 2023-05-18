package kb03.multicampus.petandmet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductRecommendRequestData {
	
	private int petNo;
	private String category;

}
